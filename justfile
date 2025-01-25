default:
    @just --list

rebuild-pre:
    @git add --intent-to-add .

rebuild:
    nh os switch
