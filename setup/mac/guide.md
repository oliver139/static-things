# To be installed

- Git + Sourcetree
- VSCode
- pnpm
- Figma
- Homebrew
- Mac Mouse Fix v2 (https://macmousefix.com/)
- iTerm2 + oh-my-zsh + starship.rs
- FiraCode Nerd Font
    

# To be config

- Home & End key: Create `~/Library/KeyBindings/DefaultKeyBinding.dict` with below content
```
{
  "\UF729"  = moveToBeginningOfParagraph:; // home
  "\UF72B"  = moveToEndOfParagraph:; // end
  "$\UF729" = moveToBeginningOfParagraphAndModifySelection:; // shift-home
  "$\UF72B" = moveToEndOfParagraphAndModifySelection:; // shift-end
  "^\UF729" = moveToBeginningOfDocument:; // ctrl-home
  "^\UF72B" = moveToEndOfDocument:; // ctrl-end
  "^$\UF729" = moveToBeginningOfDocumentAndModifySelection:; // ctrl-shift-home
  "^$\UF72B" = moveToEndOfDocumentAndModifySelection:; // ctrl-shift-end
}
```