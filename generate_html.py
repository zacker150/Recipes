from glob import glob
from io import TextIOWrapper
from os import path

from urllib import parse

def write_link(filename: str, outfile: TextIOWrapper) -> None:
    name = path.basename(filename)[0:-4]
    print(f"Writing {filename}")
    filename = parse.quote(filename)
    outfile.write(f'<a href="{filename}">{name}</a><br />\n')


def main() -> None:
    files = glob("Recipes/*.pdf")
    
    with open('recipe_links.html', 'w') as outfile:
        for filename in files: 
            write_link(filename, outfile)       


if __name__ == "__main__":
    main()