
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robomaker-simulation-msgs }:
buildRosPackage {
  pname = "ros-kinetic-aws-robomaker-simulation-ros-pkgs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_simulation_ros_pkgs-release/archive/release/kinetic/aws_robomaker_simulation_ros_pkgs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "5862b3d07c17752ed8d4b02d5a8bcd7b9c93a43a855af96b8478e33d70a72d0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robomaker-simulation-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AWS RoboMaker package for accessing the simulation service.'';
    license = with lib.licenses; [ asl20 ];
  };
}
