
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, joint-trajectory-controller, pluginlib, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-scaled-joint-trajectory-controller";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/melodic/scaled_joint_trajectory_controller/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6dea8314c90b48ccb9e02a3877059d765b053bb285c9b4ef64b6601c3bf92439";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface joint-trajectory-controller pluginlib realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface.'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
