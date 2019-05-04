
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, summit-x-robot-control, summit-x-control, summit-x-description, catkin, roscpp, std-msgs, tf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-gazebo";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_gazebo/1.1.1-0.tar.gz;
    sha256 = "27fda900c03da9b4760d4f407002f8c5b8ca3e9bd91a37d7a75e302b37551a79";
  };

  buildInputs = [ gazebo-ros std-srvs summit-x-robot-control tf summit-x-description roscpp std-msgs summit-x-control xacro ];
  propagatedBuildInputs = [ gazebo-ros std-srvs summit-x-robot-control tf summit-x-description roscpp std-msgs summit-x-control xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and world files to start the models in gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
