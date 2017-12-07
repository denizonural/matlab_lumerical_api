classdef c_FDE < c_lumBaseObject
% Lumerical finite difference eigenmode solver object
% Specific to MODE solutions (?)
% 
% author: bohan
%
% List of properties of the lumerical object
% returned when called ?set; on a FDE model object:
% actual mesh cells x
% actual mesh cells y
% actual mesh cells z
% algorithm
% allow symmetry on all boundaries
% background index
% bend orientation
% bend radius
% bent waveguide
% calculate characteristic impedance
% center frequency
% center wavelength
% center x
% center y
% center z
% define x mesh by
% define y mesh by
% define z mesh by
% dx
% dy
% dz
% enabled
% fit analytic materials
% fit materials with multi-coefficient model
% fit sampled materials
% force symmetric x mesh
% force symmetric y mesh
% force symmetric z mesh
% frequency
% frequency span
% frequency start
% frequency stop
% grading factor
% integration shape
% mesh cells x
% mesh cells y
% mesh cells z
% mesh refinement
% meshing refinement
% min mesh step
% n
% n1
% n2
% name
% number of trial modes
% pml kappa
% pml layers
% pml polynomial
% pml sigma
% radius
% search
% simulation temperature
% solver type
%       OK what the heck are the allowed solver types?
% type
% use max index
% use mesh refinement
% use relative coordinates
% wavelength
% wavelength span
% wavelength start
% wavelength stop
% x
% x max
% x max bc
% x min
% x min bc
% x span
% x1
% x2
% y
% y max
% y max bc
% y min
% y min bc
% y span
% y1
% y2
% z
% z max
% z max bc
% z min
% z min bc
% z span
% z1
% z2
    
    properties
        
        model_type;

    end     % end properties
    
    
    methods
        
        function obj = c_FDE( varargin )
            % constructor
            %
            % inputs:
            %   varargin = name value pairs
            %           where name must be one of the valid props
            
            % valid property names
            valid_props =   { ...
                            'actual mesh cells x', ...
                            'actual mesh cells y', ...
                            'actual mesh cells z', ...
                            'algorithm', ...
                            'allow symmetry on all boundaries', ...
                            'background index', ...
                            'bend orientation', ...
                            'bend radius', ...
                            'bent waveguide', ...
                            'calculate characteristic impedance', ...
                            'center frequency', ...
                            'center wavelength', ...
                            'center x', ...
                            'center y', ...
                            'center z', ...
                            'define x mesh by', ...
                            'define y mesh by', ...
                            'define z mesh by', ...
                            'dx', ...
                            'dy', ...
                            'dz', ...
                            'enabled', ...
                            'fit analytic materials', ...
                            'fit materials with multi-coefficient model', ...
                            'fit sampled materials', ...
                            'force symmetric x mesh', ...
                            'force symmetric y mesh', ...
                            'force symmetric z mesh', ...
                            'frequency', ...
                            'frequency span', ...
                            'frequency start', ...
                            'frequency stop', ...
                            'grading factor', ...
                            'integration shape', ...
                            'mesh cells x', ...
                            'mesh cells y', ...
                            'mesh cells z', ...
                            'mesh refinement', ...
                            'meshing refinement', ...
                            'min mesh step', ...
                            'n', ...
                            'n1', ...
                            'n2', ...
                            'name', ...
                            'number of trial modes', ...
                            'pml kappa', ...
                            'pml layers', ...
                            'pml polynomial', ...
                            'pml sigma', ...
                            'radius', ...
                            'search', ...
                            'simulation temperature', ...
                            'solver type', ...
                            'type', ...
                            'use max index', ...
                            'use mesh refinement', ...
                            'use relative coordinates', ...
                            'wavelength', ...
                            'wavelength span', ...
                            'wavelength start', ...
                            'wavelength stop', ...
                            'x', ...
                            'x max', ...
                            'x max bc', ...
                            'x min', ...
                            'x min bc', ...
                            'x span', ...
                            'x1', ...
                            'x2', ...
                            'y', ...
                            'y max', ...
                            'y max bc', ...
                            'y min', ...
                            'y min bc', ...
                            'y span', ...
                            'y1', ...
                            'y2', ...
                            'z', ...
                            'z max', ...
                            'z max bc', ...
                            'z min', ...
                            'z min bc', ...
                            'z span', ...
                            'z1', ...
                            'z2' ...
                            };
            
            obj = obj@c_lumBaseObject( valid_props, varargin{:} );
                        
            obj.model_type = 'FiniteDifferenceEigenmodeSolver';
            
        end     % end constructor()
        

    end     % end methods
    
end






































