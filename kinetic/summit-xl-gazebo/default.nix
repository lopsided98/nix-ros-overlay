
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, summit-xl-robot-control, summit-xl-description, catkin, summit-xl-control, roscpp, std-msgs, tf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-gazebo";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/summit_xl_gazebo/1.1.1-0.tar.gz;
    sha256 = "c884aa197af85170706dadb272925aac0afeaef181c0eb9d9aa5f4b973536801";
  };

  buildInputs = [ gazebo-ros std-srvs summit-xl-robot-control tf summit-xl-description summit-xl-control std-msgs roscpp xacro ];
  propagatedBuildInputs = [ gazebo-ros std-srvs summit-xl-robot-control tf summit-xl-description summit-xl-control std-msgs roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and world files to start the models in gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
