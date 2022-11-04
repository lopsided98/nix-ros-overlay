
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robomaker-simulation-msgs }:
buildRosPackage {
  pname = "ros-melodic-aws-robomaker-simulation-ros-pkgs";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_simulation_ros_pkgs-release/archive/release/melodic/aws_robomaker_simulation_ros_pkgs/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "5e0601fa00843ff7ac138fe81b6a8f97242aaaf2648aee4a870b21bc9055ae8e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robomaker-simulation-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AWS RoboMaker package for accessing the simulation service.'';
    license = with lib.licenses; [ asl20 ];
  };
}
