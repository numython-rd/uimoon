function AddMany(obj,varargin)
% AddMany 
%
% Agrega al contenedor actual uno o varios objetos 
% derivados de la clase Component. 
% 
% EJEMPLO
%              app = Frame('App 1');
%              bt = Button('Click');
%              lbl = Label('Texto');
%              txt = TextField('');
%              app.AddMany(bt, lbl, txt);
%
%      See also: Add

for i=1:length(varargin)
    try
        obj.Add(varargin{i});
%         set(varargin{i}.hComp,    ...
%             'Parent',    obj.hCont,...
%             'Visible',   'on' );
    catch err
        % pass
        disp(err.message);
%         set(varargin{i}.hCont,    ...
%             'Parent',    obj.hCont,...
%             'Visible',   'on' );
    end
end
end