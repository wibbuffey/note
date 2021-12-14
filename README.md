# note.sh

`note.sh` is a basic shell script (doesn't require Bash or any other enhanced
shell) to write notes in your terminal. There's really not much else to say, but
perhaps you may find some guidance on how to use it helpful.

Reasons you should consider using it:
  - Easier to use than running `vi ~/note/$(date +%s)`
  - Minimal, no dependencies and exactly 50 lines (as of `main-v1.0.0`)
  - Lots of colors (the best part of the terminal, really)

> **⚠️ Note:** it _really_ doesn't work well if your terminal doesn't support
> colors (namely true colors). It's possible that a future version may fix this,
> but for now, the only option is to update your terminal.

## Usage

Practically all of how to use `note.sh` can be found by using `./note.sh -h`. To
summarize what it says:

```sh
./note.sh -h        # Display the help page
./note.sh -e emacs  # Use Emacs as your editor
./note.sh -n todo   # Make a note named todo.txt
```

It also works fairly well with other utilities that are installed on any POSIX-
compatible machine:

```sh
ls ~/note           # list all created notes
cat ~/note/123      # get the note from unix timestamp 123 (or just named 123)
grep "test"         # when ran in ~/note, looks for notes that contain "test"
```

## Contributing

Thanks for wanting to contribute! 🎉

We have very basic guidelines:

- Your commit must add to the project somehow
- It must follow the [commit format](#commit-format)

### Commit Format

All commits must follow the following format:

> `[type] {desc} ~ <ver>`

...in which:

- `[type]` is the type of the commit, which can be one of
  - `b` (bugfix),
  - `d` (documentation),
  - `m` (maintenance), or
  - `i` (internal/chore)
- `{desc}` is a brief description of the commit
  - this should be 50 characters or less, any longer description should be in
    the extended commit message
- `<ver>` is the version of the script that you are committing to. It should be
  in the format `vX.Y.Z@branch`.

An example of this would be:

> `[b] Fix issue #1 so it works with color ~ v1.0.0@beta`

## Download

You can download the script on the Releases page:

- `https://github.com/wibbuffey/note/releases`

The project uses a modified version of [Semantic
Versioning](https://semver.org). Version tags are in the format `B-vX.Y.Z`,
where:

- ...`X` is the major, incremented with every breaking change
- ...`Y` is the minor, incremented with every new feature
- ...`Z` is the patch, incremented with every bugfix and release
- ...`B` is the branch, either `main` (stable) or `beta` (less stable but newer)

Releases are always released in the `beta` branch before being released on the
`main` branch.
