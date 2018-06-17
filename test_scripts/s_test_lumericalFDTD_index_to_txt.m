% test index writing function

clear; close all;

% make lumerical fdtd object
obj = c_lumericalFDTD(  'notes', 'psdlkfjsdlkfj', ...
                        'filename', 'nuthin', ...
                        'file_directory', pwd );
                    
% coordinates
x = linspace( -2, 2, 300 );
y = linspace( -3, 3, 300 );

% index
N                           = 1.5*ones( length(y), length(x) );
N( y > -2 & y < 2, : )      = 1.6;

% export index to txt
obj = obj.write_index_to_txt( N, x, y );