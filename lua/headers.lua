local M = {}

-- M.cool = {
--   [[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
--   [[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
--   [[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
--   [[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
--   [[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
--   [[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
--   [[      ██████╗ ██████╗  ██████╗ ██╗        ]],
--   [[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
--   [[     ██║     ██║   ██║██║   ██║██║        ]],
--   [[     ██║     ██║   ██║██║   ██║██║        ]],
--   [[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
--   [[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
--   [[███████╗████████╗██╗   ██╗███████╗███████╗]],
--   [[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
--   [[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
--   [[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
--   [[███████║   ██║   ╚██████╔╝██║     ██║     ]],
--   [[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
-- }

M.panda = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣆⠀⢀⣀⣀⣤⣤⣤⣶⣦⣤⣤⣄⣀⣀⠀⢠⣾⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀   ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀   ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀    ]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀    ]],
  [[⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⠟⠀⠀⠀⠀⠀⣀⣤⣤⣤⡀⠀⠀⠀⠀⠀⢀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠘⣿⡿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀   ]],
  [[⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⣠⣾⣿⣿⠛⣿⡇⠀⠀⠀⠀⠀⢸⣿⣿⠛⣿⣿⣦⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀    ]],
  [[⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠀⠀⠀⠀⣿⣿⣿⣿⣿⡟⢠⣶⣾⣿⣿⣷⣤⢹⣿⣿⣿⣿⣿⡇⠀⠀⣀⣤⣿⣷⣴⣶⣦⣀⡀⠀⠀⠀⠀   ]],
  [[⠀⠀⠀⠀ ⠀⠀⠀⢀⣠⣤⣤⣤⣇⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠘⠻⣿⣿⣿⡿⠋⠀⢹⣿⣿⣿⣿⡇⠀⣿⣿⣿⡏⢹⣿⠉⣿⣿⣿⣷⠀⠀⠀   ]],
  [[⠀⠀⠀ ⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠹⣿⣿⠿⠋⠀⢤⣀⢀⣼⡄⠀⣠⠀⠈⠻⣿⣿⠟⠀⢸⣿⣇⣽⣿⠿⠿⠿⣿⣅⣽⣿⡇⠀⠀   ]],
  [[⠀⠀⠀⠀ ⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣟⠁⠀⠀⠀⠈⣿⣿⣿⡇⠀⠀⠀  ]],
  [[⠛⠛⠛⠛⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛]],
  [[⠀⠀⠀⠀⠀⠀⠘⠛⠻⢿⣿⣿⣿⣿⣿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ]],
}

M.batman = {
  [[                                                                          ]],
  [[ @@@@@@@@@@@@@@@@@@@@@\                            /@@@@@@@@@@@@@@@@@@@@@ ]],
  [[  \@@@@@@@@@@@@@@@@@@@@\          /\  /\          /@@@@@@@@@@@@@@@@@@@@/  ]],
  [[    \@@@@@@@@@@@@@@@@@@@\        /@@@@@@\        /@@@@@@@@@@@@@@@@@@@/    ]],
  [[     \@@@@@@@@@@@@@@@@@@@\______/@@@@@@@@\______/@@@@@@@@@@@@@@@@@@@/     ]],
  [[      \@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/      ]],
  [[      |@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@|      ]],
  [[      |@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@|      ]],
  [[     _/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\_     ]],
  [[     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ]],
  [[                    \@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/                    ]],
  [[                           \@@@@@@@@@@@@@@@@@@/                           ]],
  [[                               \@@@@@@@@@@/                               ]],
  [[                                 \@@@@@@/                                 ]],
  [[                                  \@@@@/                                  ]],
  [[                                   \@@/                                   ]],
  [[                                                                          ]],
}

return M
