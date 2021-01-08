
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-with-tb3-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-simulations";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3_simulations-release/archive/release/kinetic/open_manipulator_with_tb3_simulations/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "de51ffac66243b7617833efe47806f28c2818f9f87fc337d33a6a959014797e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-with-tb3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
