
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, realtime-tools, speed-scaling-interface, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-speed-scaling-state-controller";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/melodic/speed_scaling_state_controller/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "22689826e020b2ad87e2e312836e84c175d291b97d6f782eafdba5c166de4690";
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
