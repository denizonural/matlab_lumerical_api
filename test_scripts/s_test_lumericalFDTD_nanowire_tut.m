% author: bohan
%
% script for testing lumerical FDTD api
% recreating nanowire tut from here:
% https://kb.lumerical.com/en/particle_scattering_nanowire_modeling_instructions.html

clear; close all;

% dependencies
addpath( genpath( '..' ) );
% addpath( 'C:\Users\beezy\git\matlab_lumerical_api\main' );                  % main lumerical/matlab api code, laptop

% inputs
notes       = 'testing lumerical fdtd using the nanowire tutorial';
filename    = 'test_fdtd_nanowire_tut.lsf';
file_dir    = pwd;

obj = c_lumericalFDTD(  'notes', notes, ...
                        'filename', filename, ...
                        'file_directory', file_dir );
                    
% open lumerical
obj = obj.appopen();

% add circle
obj = obj.addcircle(    'name', 'circle1', ...
                        'x', 0,   ...
                        'y', 0,   ...
                        'z', 0, ...
                        'z span', 600e-9, ...
                        'radius', 25e-9, ...
                        'material', 'Ag (Silver) - Palik (0-2um)' );

% add fdtd region
obj = obj.addfdtd( 	'dimension', '2D', ...
                    'simulation time', 200e-15, ...
                    'x', 0, ...
                    'y', 0, ...
                    'z', 0, ...
                    'x span', 800e-9, ...
                    'y span', 800e-9 );

% add mesh region
obj = obj.addmesh( 'name', 'mesh1', ...
                    'dx', 1e-9, ...
                    'dy', 1e-9, ...
                    'x', 0, ...
                    'y', 0, ...
                    'x span', 110e-9, ...
                    'y span', 110e-9 );
                
% add TFSF source
obj = obj.addtfsf( 'name', 'source1', ...
                    'polarization angle', 0, ...
                    'x', 0, ...
                    'y', 0, ...
                    'z', 0, ...
                    'x span', 100e-9, ...
                    'y span', 100e-9, ...
                    'wavelength start', 300e-9, ...
                    'wavelength stop', 400e-9 );
                
% set global monitor by running a custom command
obj = obj.write_command( 'setglobalmonitor("frequency points",100);' );
                
% execute commands
obj = obj.execute_commands();             
                
% 
% % add FDE
% obj = obj.addFDE(   'x min', -3e-6, 'x max', 3e-6,  ...
%                     'y min', -3.5e-6, 'y max', 3.5e-6,  ...
%                     'solver type', '2D Z normal',   ...
%                     'x min bc', 'PML', ...
%                     'x max bc', 'PML', ...
%                     'y min bc', 'PML', ...
%                     'y max bc', 'PML' );
% 
% % request default properties from FDE
% obj = obj.getprop( 'bent waveguide', 'fde_prop_bent_wg' );
%                 
% % find modes
% obj = obj.findmodes();
% 
% % save mode 1 E field to a lumerical variable
% obj = obj.saveresult( 'mode1', 'Ex', 'mode1_Ex' );
% obj = obj.saveresult( 'mode2', 'Ex', 'mode2_Ex' );
% obj = obj.saveresult( 'mode1', 'x', 'x' );
% obj = obj.saveresult( 'mode1', 'y', 'y' );
% 
% % % execute script
% % obj = obj.execute_script();
% 
% % execute commands
% obj = obj.execute_commands();
% 
% % transfer property to matlab
% [obj, fde_prop_bent_wg] = obj.getvar( 'fde_prop_bent_wg' );
% 
% % transfer Ex to matlab
% [obj, mode1_Ex] = obj.getvar( 'mode1_Ex' );  
% [obj, mode2_Ex] = obj.getvar( 'mode2_Ex' ); 
% [obj, x]        = obj.getvar( 'x' ); 
% [obj, y]        = obj.getvar( 'y' );
% 
% % plot modes
% figure;
% imagesc( x, y, real(mode1_Ex) );
% xlabel('x (m)'); ylabel('y (m)'); 
% colorbar;
% set( gca, 'ydir', 'normal' );
% title('mode 1');
% 
% % close lumerical
% obj = obj.appclose();