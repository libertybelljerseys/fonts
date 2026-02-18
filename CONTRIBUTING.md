# How to Contribute

Thanks for wanting to add to the Hockey Font Database! This guide walks you through submitting a font using either **GitHub Desktop** (easier, no command line) or the **Git CLI** (command line). You only need to follow one of the two — pick whichever you're more comfortable with.

If you've never used GitHub before, GitHub Desktop is the recommended starting point.

---

## Before You Start

**Make sure your file follows the naming schema.** Files that don't match will be automatically flagged when you submit. The full schema is in the [README](./README.md), but the short version is:

```
TEAM_ERA_STYLE_vN.svg
```

For example:
```
TOR_2020-present_jersey-numbers_v1.svg
PHI_2022_reverseretro2_jersey-numbers_v1.svg
BUF_2001_911memorial_wordmark_v1.svg
```

All lowercase except the team abbreviation. No spaces — use hyphens or underscores. Place your file in the right league and team folder, inside either `finalized/` or `wip/`.

If you're not sure whether a font is ready to go in `finalized/`, put it in `wip/`. It can always be moved later.

---

## Option A: GitHub Desktop

### 1. Install GitHub Desktop

Download it from [desktop.github.com](https://desktop.github.com) and sign in with your GitHub account. Create one for free at [github.com](https://github.com) if you don't have one.

### 2. Fork the repository

A **fork** is your own personal copy of the repo that lives on your GitHub account. You make changes there, then propose them to the main repo via a **pull request**.

- Go to [github.com/libertybelljerseys/fonts](https://github.com/libertybelljerseys/fonts)
- Click the **Fork** button in the top-right corner
- Click **Create fork**

### 3. Clone your fork to your computer

Cloning downloads your fork so you can work on it locally.

- In GitHub Desktop, go to **File → Clone Repository**
- Click the **GitHub.com** tab and find your forked copy (it will be listed under your username)
- Choose where to save it on your computer and click **Clone**

### 4. Add your file

Using File Explorer (Windows) or Finder (Mac), navigate to the folder where you cloned the repo. Find the right league and team folder, then drop your `.svg` file into either `finalized/` or `wip/`.

If the team folder doesn't exist yet, create it. Follow the existing folder naming style — `First_Last` capitalization with underscores, for example `Toronto_Maple_Leafs`.

### 5. Commit your change

Switch back to GitHub Desktop. You should see your new file listed under **Changes** on the left.

- At the bottom-left, write a short description in the **Summary** field, for example: `Add TOR 2020-present jersey numbers`
- Click **Commit to main**

### 6. Push to your fork

Click **Push origin** at the top of the screen. This uploads your commit to your fork on GitHub.

### 7. Open a pull request

- Click **Branch → Create Pull Request** in the menu (or click the blue button that appears after pushing)
- This will open GitHub in your browser
- Add a title describing what you're adding, then click **Create pull request**

That's it! The file will be automatically checked against the naming schema. If anything's off, you'll see a note in the pull request explaining what to fix.

---

## Option B: Git CLI

### 1. Fork the repository

- Go to [github.com/libertybelljerseys/fonts](https://github.com/libertybelljerseys/fonts)
- Click **Fork → Create fork**

### 2. Clone your fork

```bash
git clone https://github.com/YOUR_USERNAME/fonts.git
cd fonts
```

### 3. Add the original repo as a remote (optional but recommended)

This lets you pull in future updates from the main repo:

```bash
git remote add upstream https://github.com/libertybelljerseys/fonts.git
```

### 4. Add your file

Copy your `.svg` file into the correct location. For example:

```
NHL/Toronto_Maple_Leafs/finalized/TOR_2020-present_jersey-numbers_v1.svg
```

If the team folder doesn't exist yet, create it:

```bash
mkdir -p NHL/New_Team_Name/finalized
mkdir -p NHL/New_Team_Name/wip
```

### 5. Commit your change

```bash
git add .
git commit -m "Add TOR 2020-present jersey numbers"
```

### 6. Push to your fork

```bash
git push origin main
```

### 7. Open a pull request

- Go to your fork on GitHub (`github.com/YOUR_USERNAME/fonts`)
- Click the **Compare & pull request** button
- Add a title and click **Create pull request**

The automated filename linter will run and flag any issues with a description of what to fix.

---

## Keeping Your Fork Up to Date

If some time has passed since you forked, the main repo may have new files. Here's how to sync up before adding something new.

**GitHub Desktop:** Go to **Branch → Update from upstream** (or fetch and merge from the Repository menu).

**Git CLI:**
```bash
git fetch upstream
git merge upstream/main
```

---

## Questions

If you're unsure about a team abbreviation, era dates, or which `STYLE` token to use, open an [Issue](https://github.com/libertybelljerseys/fonts/issues) and ask before submitting. It's much easier to sort out naming questions before the file is submitted than after.
