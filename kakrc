add-highlighter global/ number-lines -hlcursor
add-highlighter global/ show-matching

eval %sh{kak-lsp --kakoune -s $kak_session}
hook global WinSetOption filetype=(rust|python|go|javascript|typescript|c|cpp) %{
        lsp-enable-window
}
