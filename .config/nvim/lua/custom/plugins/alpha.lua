return {
  'goolord/alpha-nvim',
  enabled = false,
  dependencies = { 'echasnovski/mini.icons' },
  -- dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local startify = require 'alpha.themes.startify'
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    startify.file_icons.provider = 'devicons'
    -- generated with - http://patorjk.com/software/taag/#p=display&f=Graffiti&t=neovim
    local headers = {
      {
        '',
        '███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█     ▄▄▄▄███▄▄▄▄   ',
        '███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███   ▄██▀▀▀███▀▀▀██▄ ',
        '███   ███   ███    █▀  ███    ███ ███    ███ ███▌  ███   ███   ███ ',
        '███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌  ███   ███   ███ ',
        '███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌  ███   ███   ███ ',
        '███   ███   ███    █▄  ███    ███ ███    ███ ███   ███   ███   ███ ',
        '███   ███   ███    ███ ███    ███ ███    ███ ███   ███   ███   ███ ',
        ' ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀     ▀█   ███   █▀  ',
        '                                                                   ',
      },
      {
        ' ▄▀▀▄ ▀▄  ▄▀▀█▄▄▄▄  ▄▀▀▀▀▄   ▄▀▀▄ ▄▀▀▄  ▄▀▀█▀▄    ▄▀▀▄ ▄▀▄ ',
        '█  █ █ █ ▐  ▄▀   ▐ █      █ █   █    █ █   █  █  █  █ ▀  █ ',
        '▐  █  ▀█   █▄▄▄▄▄  █      █ ▐  █    █  ▐   █  ▐  ▐  █    █ ',
        '  █   █    █    ▌  ▀▄    ▄▀    █   ▄▀      █       █    █  ',
        '▄▀   █    ▄▀▄▄▄▄     ▀▀▀▀       ▀▄▀     ▄▀▀▀▀▀▄  ▄▀   ▄▀   ',
        '█    ▐    █    ▐                       █       █ █    █    ',
        '▐         ▐                            ▐       ▐ ▐    ▐    ',
      },
      {
        ' ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
        ' ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
        '▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
        '▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ',
        '▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
        '░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
        '░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
        '   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ',
        '         ░    ░  ░    ░ ░        ░   ░         ░   ',
        '                                ░                  ',
      },
      {
        '   ▄   ▄███▄   ████▄     ▄   ▄█ █▀▄▀█ ',
        '    █  █▀   ▀  █   █      █  ██ █ █ █ ',
        '██   █ ██▄▄    █   █ █     █ ██ █ ▄ █ ',
        '█ █  █ █▄   ▄▀ ▀████  █    █ ▐█ █   █ ',
        '█  █ █ ▀███▀           █  █   ▐    █  ',
        '█   ██                  █▐        ▀   ',
        '                        ▐             ',
      },
      {
        '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
        '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
        '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
        '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
        '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
        '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
        '                                                  ',
      },
      -- {
      --   '                                       ++                                        ',
      --   '                                      ++++ +≈                                    ',
      --   '                                       +++ +≈                                    ',
      --   '                                       +++ ππ                                    ',
      --   '                                       +++ +∞                                    ',
      --   '                                       +++ ×≠                                    ',
      --   '                                       +++                                       ',
      --   '                                       +++                                       ',
      --   '                                       +++                                       ',
      --   '                                      ≈+++                                       ',
      --   '                                      ≈+++                                       ',
      --   '                                      ≠+++                                       ',
      --   '                                        +                                        ',
      --   '                                      ++                                         ',
      --   '                                     ++++                                        ',
      --   '                                      +++                                        ',
      --   '                                      -++                                        ',
      --   '                                      ∞++                                        ',
      --   '                                   +  √++                                        ',
      --   '                                   +  ∞++                                        ',
      --   '                                   +  ≈++                                        ',
      --   '                                   +  ÷++                                        ',
      --   '                                    + +++                                        ',
      --   '                                     ++++×                                       ',
      --   '                                     +++++                                       ',
      --   '                                     +++++++                                     ',
      --   '                                   ++++++++++                                    ',
      --   '                                 ++++ +++++++++                                  ',
      --   '                               =++√   +++=  +++++                                ',
      --   '                              ++×     +++∞    +++++                              ',
      --   '                            +++       +++√     ∞++++=                            ',
      --   '                           ×+         +++√         +++                           ',
      --   '                                      +++          +++++                         ',
      --   '                      ∞++             +++≈           ++++++                      ',
      --   '                    ≠+++               +++             +++++                     ',
      --   '                   √+++               ++++              +++++√                   ',
      --   '                   π++×               ++++               ++++                    ',
      --   '                     ++              -√++×+            ≠+++++                    ',
      --   '                       +++            ++++√           ++++≠                      ',
      --   '                        ++++          ++++          ++++π                        ',
      --   '                          +++++       ++++         ++++                          ',
      --   '                            ++++      ++++        ++++                           ',
      --   '                              ++      =+++       +++                             ',
      --   '                                    -+×+++       +×                              ',
      --   '                                    ++ ≠                                         ',
      --   '                                   ++   ++                                       ',
      --   '                                   +  +++++                                      ',
      --   '                                     ++++++                                      ',
      --   '                                     ++++++                                      ',
      --   '                                       +++                                       ',
      -- },
    }
    -- Ensure randomness on each launch
    math.randomseed(os.time())
    startify.section.header.val = headers[math.random(#headers)]
    require('alpha').setup(startify.config)
  end,
}
