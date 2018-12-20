" Convenience mappings                                                       
                                                                             
"1. Leader-related mappings                                                  
let mapleader = ","                                                          
                                                                             
imap <leader>' ''<ESC>i                                                      
imap <leader>" ""<ESC>i                                                      
imap <leader>( ()<ESC>i                                                      
imap <leader>[ []<ESC>i                                                      
imap <leader>{ {}<ESC>i

"2. Create a new-line above cursor in normal mode                            
noremap gO O<ESC>j                                                           
                                                                             
"3. Create a new-line below cursor in normal mode                            
noremap g<C-O> o<ESC>k                                                       
                                                                             
"4. Auto-center                                                              
nmap G Gzz                                                                   
nmap n nzz                                                                   
nmap N Nzz                                                                   
nmap n nzz                                                                   
nmap } }zz                                                                   
nmap { {zz 

"5. Map Caps Lock to Escape when  entering vim                               
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'            
                                                                             
"6. Map Escape to Caps Lock when exiting vim                                 
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'         
                                                                             
"7. Open NERDTree                                                            
map <C-f> :NERDTreeToggle<CR>                                                

"8. Go to definition shrotcut
nmap <C-g> :ALEGoToDefinition
                        
"9. Launch fzf in normal mode
nmap <C-s> :Files<CR>
