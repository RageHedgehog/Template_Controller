% 
% This is a template controller model
% Firmament Autopilot
%

controller_version = 'v0.0.1';

%% Constant Variable
CONTROL_CONST.dt = 0.005;   % model execution period, change accordingly

%% Exported Value
CONTROL_EXPORT_VALUE.period = uint32(CONTROL_CONST.dt*1e3);
CONTROL_EXPORT_VALUE.model_info = int8(['Template Controller ', controller_version, 0]); % 0 for end of string

%% Paramaters
CONTROL_PARAM_VALUE.A = single(1.0);    % add your own parameters
CONTROL_PARAM_VALUE.B = int16(0); % add your own parameters

%% Export to firmware
CONTROL_EXPORT = Simulink.Parameter(CONTROL_EXPORT_VALUE);
CONTROL_EXPORT.CoderInfo.StorageClass = 'ExportedGlobal';
CONTROL_PARAM = Simulink.Parameter(CONTROL_PARAM_VALUE);
CONTROL_PARAM.CoderInfo.StorageClass = 'ExportedGlobal';