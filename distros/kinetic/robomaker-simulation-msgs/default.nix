
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robomaker-simulation-msgs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_simulation_ros_pkgs-release/archive/release/kinetic/robomaker_simulation_msgs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "d70ade5a4b71772970a66967ced12149fc7ad45ca00d66bed8de77108b170920";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AWS RoboMaker package containing ROS service definitions for service endpoints provided inside of an AWS RoboMaker simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
