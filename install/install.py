import subprocess
import pathlib
import sys
import os

if __name__ == "__main__":
    print("Running auto installer.")
    root = pathlib.Path(__file__).parent.resolve()
    
    if sys.platform.startswith("win"):
        print("Detected Windows.")
        batpath = str(root / "build.bat")
        print(f"Batch file: {batpath}")
        subprocess.run(batpath, shell=True)
    else:
        print("Detected macOS/UNIX.")
        shpath = str(root / "build.sh")
        print(f"Shell script: {shpath}")
        
        # Get the current shell
        shell = subprocess.run(
            ["ps", "-p", str(os.getppid()), "-o", "comm="],
            capture_output=True,
            text=True,
        ).stdout.strip()
        
        if "zsh" in shell:
            shell_path = "/bin/zsh"
        elif "bash" in shell:
            shell_path = "/bin/bash"
        else:
            raise RuntimeError("Neither bash nor zsh detected. Ensure you are running in a compatible shell.")

        # Set environment and working directory
        env = os.environ.copy()
        subprocess.run([shell_path, shpath], check=True, cwd=str(root), env=env)
        
    print("Finished installation.")
    print("To activate the prepared environment, run the command:\n\nconda activate rdkit_tutorial")