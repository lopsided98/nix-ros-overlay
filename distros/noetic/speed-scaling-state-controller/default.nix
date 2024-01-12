
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, realtime-tools, speed-scaling-interface, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-speed-scaling-state-controller";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/noetic/speed_scaling_state_controller/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "742012d1c84cb0431ec1bad62f6ae3eb3ed7a95e6755adcad66c580e8ed2285d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface pluginlib realtime-tools speed-scaling-interface std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS controller providing reading the state of speed scaling on the robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
