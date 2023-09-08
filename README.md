# rename_delimiter
Rename folders or files in the current directory based on a specified delimiter

## Example

      $ ls

          a 2.txt
          diretory work
          sample v.txt
          sample_v2.txt
      
      $ bash script.sh -d " " -t "_"

      $ ls

          a_2.txt
          diretory_work
          sample_v.txt
          sample_v2.txt

### Explanation

All the spaces are converted into underscores

## Warning 

The script creates files "ap.txt" and "av.txt", so if you have files with the same name, condider renaming them or modify the script.

## Usage

You can create an alias in your .bashrc for example...

###Example

alias new_command="bash ~/path_to_the_script/script.sh"
