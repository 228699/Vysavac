% MATLAB controller for Webots
% File:          my_controller.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;

TIME_STEP = 64;

% SETTINGS MOTORS
left_m = wb_robot_get_device('left wheel motor');
wb_motor_set_position(left_m, inf);
wb_motor_set_velocity(left_m, 3);
right_m = wb_robot_get_device('right wheel motor');
wb_motor_set_position(right_m, inf);
wb_motor_set_velocity(right_m, 3);

%SETTINGS TOUCH SENSORS
left_t = wb_robot_get_device('bumper_left');
wb_touch_sensor_enable(left_t, 64);
right_t = wb_robot_get_device('bumper_right');
wb_touch_sensor_enable(right_t, 64);

%SETTINGS DISTANCE SENSORS
c_f_left = wb_robot_get_device('cliff_front_left');
wb_distance_sensor_enable(c_f_left,64);
c_f_right = wb_robot_get_device('cliff_front_right');
wb_distance_sensor_enable(c_f_right,64);
c_left = wb_robot_get_device('cliff_left');
wb_distance_sensor_enable(c_left,64);
c_right = wb_robot_get_device('cliff_right');
wb_distance_sensor_enable(c_right,64);


while wb_robot_step(TIME_STEP) ~= -1
   %SENZORS TOUCH
   touch_left = wb_touch_sensor_get_value(left_t);
   touch_right = wb_touch_sensor_get_value(right_t);
   
   %SENZOR DISTANCE
   distance_c_f_left = wb_distance_sensor_get_value(c_f_left);
   distance_c_f_right = wb_distance_sensor_get_value(c_f_right);
   distance_c_left = wb_distance_sensor_get_value(c_left);
   distance_c_right = wb_distance_sensor_get_value(c_right);
  
  
  
  
  
  

end

% cleanup code goes here: write data to files, etc.
