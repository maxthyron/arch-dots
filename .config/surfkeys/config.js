// ---- Settings ----
Hints.characters = 'asdfgyuiopqwertnmzxcvb';

settings.defaultSearchEngine = 'd';
settings.hintAlign = 'right';
settings.scrollStepSize = 200;
settings.tabsThreshold = 10;
settings.tabsMRUOrder = false;
settings.modeAfterYank = 'Normal';
settings.focusFirstCandidate = true;
settings.enableAutoFocus = false;
settings.focusAfterClosed = 'last';

// Search Engines
removeSearchAliasX('b', 's');
removeSearchAliasX('d', 's');
removeSearchAliasX('g', 's');
removeSearchAliasX('h', 's');
removeSearchAliasX('w', 's');
removeSearchAliasX('y', 's');
removeSearchAliasX('s', 's');

addSearchAliasX('au', 'aur', 'https://aur.archlinux.org/packages/?O=0&SeB=nd&K=', 's');
addSearchAliasX('aw', 'arch wiki', 'https://wiki.archlinux.org/index.php?title=Special:Search&search=', 's');
addSearchAliasX('d', 'duckduckgo', 'https://duckduckgo.com/?q=', 's');
addSearchAliasX('gh', 'github', 'https://github.com/search?utf8=✓&q=', 's');
addSearchAliasX('st', 'steam', 'https://store.steampowered.com/search/?term=', 's');
addSearchAliasX('yt', 'youtube', 'https://www.youtube.com/results?search_query=', 's');

// ---- Unmap -----

// Emoji
// iunmap(":");

// Misc
unmap('ob');
unmap('og');
unmap('oy');

unmap('e');
// ---- Map -----
// History Back/Forward
map('H', 'S');
map('L', 'D');
// Tab Delete/Undo
unmap('x');
unmap('d');
mapkey('d', '#3Close current tab', function() {
    RUNTIME("closeTab");
});
unmap('u');
mapkey('u', '#3Restore closed tab', function() {
    RUNTIME("openLast");
});
// Move Tab Left/Right
map('>', '>>');
map('<', '<<');

// Chrome Flags
mapkey('gF', '#12Open Chrome Flags', function() {
    tabOpenLink("chrome://flags/");
});


/* Theme Settings */
Hints.style("font-size: 16px; border: solid 3px #4C566A; color:#A3BE8C; background: initial; background-color: #3B4252;");
Hints.style("font-size: 16px; border: solid 2px #4C566A; color: #E5E9F0; padding: 1px; background: #3B4252", "text");
Visual.style('marks', 'background-color: #A3BE8C99;');
Visual.style('cursor', 'background-color: #88C0D0;');

settings.theme = `
/* Edit these variables for easy theme making */
:root {
  /* Font */
  --font: 'Fira Code', 'Source Code Pro';
  --font-size: 16;
  --font-weight: bold;

  --fg: #E5E9F0;
  --bg: #3B4252;
  --bg-dark: #2E3440;
  --border: #4C566A;
  --main-fg: #88C0D0;
  --accent-fg: #A3BE8C;
  --info-fg: #5E81AC;
  --select: #4C566A;

  /* Unused Alternate Colors */
  /* --orange: #D08770; */
  /* --red: #BF616A; */
  /* --yellow: #EBCB8B; */
}

/* ---------- Generic ---------- */
.sk_theme {
background: var(--bg);
color: var(--fg);
  background-color: var(--bg);
  border-color: var(--border);
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}

input {
  font-family: var(--font);
  font-weight: var(--font-weight);
}

.sk_theme tbody {
  color: var(--fg);
}

.sk_theme input {
  color: var(--fg);
}

/* Hints */
#sk_hints .begin {
  color: var(--accent-fg) !important;
}

#sk_tabs .sk_tab {
  background: var(--bg-dark);
  border: 1px solid var(--border);
}

#sk_tabs .sk_tab_title {
  color: var(--fg);
}

#sk_tabs .sk_tab_url {
  color: var(--main-fg);
}

#sk_tabs .sk_tab_hint {
  background: var(--bg);
  border: 1px solid var(--border);
  color: var(--accent-fg);
}

.sk_theme #sk_frame {
  background: var(--bg);
  opacity: 0.2;
  color: var(--accent-fg);
}

/* ---------- Omnibar ---------- */
/* Uncomment this and use settings.omnibarPosition = 'bottom' for Pentadactyl/Tridactyl style bottom bar */
/* .sk_theme#sk_omnibar {
  width: 100%;
  left: 0;
} */

.sk_theme .title {
  color: var(--accent-fg);
}

.sk_theme .url {
  color: var(--main-fg);
}

.sk_theme .annotation {
  color: var(--accent-fg);
}

.sk_theme .omnibar_highlight {
  color: var(--accent-fg);
}

.sk_theme .omnibar_timestamp {
  color: var(--info-fg);
}

.sk_theme .omnibar_visitcount {
  color: var(--accent-fg);
}

.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: var(--bg-dark);
}

.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: var(--border);
}

.sk_theme #sk_omnibarSearchArea {
  border-top-color: var(--border);
  border-bottom-color: var(--border);
}

.sk_theme #sk_omnibarSearchArea input,
.sk_theme #sk_omnibarSearchArea span {
  font-size: var(--font-size);
}

.sk_theme .separator {
  color: var(--accent-fg);
}

/* ---------- Popup Notification Banner ---------- */
#sk_banner {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
  background: var(--bg);
  border-color: var(--border);
  color: var(--fg);
  opacity: 0.9;
}

/* ---------- Popup Keys ---------- */
#sk_keystroke {
  background-color: var(--bg);
}

.sk_theme kbd .candidates {
  color: var(--info-fg);
}

.sk_theme span.annotation {
  color: var(--accent-fg);
}

/* ---------- Popup Translation Bubble ---------- */
#sk_bubble {
  background-color: var(--bg) !important;
  color: var(--fg) !important;
  border-color: var(--border) !important;
}

#sk_bubble * {
  color: var(--fg) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(1) {
  border-top-color: var(--border) !important;
  border-bottom-color: var(--border) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(2) {
  border-top-color: var(--bg) !important;
  border-bottom-color: var(--bg) !important;
}

/* ---------- Search ---------- */
#sk_status,
#sk_find {
  font-size: var(--font-size);
  border-color: var(--border);
}

.sk_theme kbd {
  background: var(--bg-dark);
  border-color: var(--border);
  box-shadow: none;
  color: var(--fg);
}

.sk_theme .feature_name span {
  color: var(--main-fg);
}

/* ---------- ACE Editor ---------- */
#sk_editor {
  background: var(--bg-dark) !important;
  height: 50% !important;
  /* Remove this to restore the default editor size */
}

.ace_dialog-bottom {
  border-top: 1px solid var(--bg) !important;
}

.ace-chrome .ace_print-margin,
.ace_gutter,
.ace_gutter-cell,
.ace_dialog {
  background: var(--bg) !important;
}

.ace-chrome {
  color: var(--fg) !important;
}

.ace_gutter,
.ace_dialog {
  color: var(--fg) !important;
}

.ace_cursor {
  color: var(--fg) !important;
}

.normal-mode .ace_cursor {
  background-color: var(--fg) !important;
  border: var(--fg) !important;
  opacity: 0.7 !important;
}

.ace_marker-layer .ace_selection {
  background: var(--select) !important;
}

.ace_editor,
.ace_dialog span,
.ace_dialog input {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}
`;

