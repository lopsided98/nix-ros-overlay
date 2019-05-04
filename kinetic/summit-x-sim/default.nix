
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, summit-x-robot-control, summit-x-control, summit-x-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-sim";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_sim/1.1.1-0.tar.gz;
    sha256 = "39e892e58c59edcd40eecbc672595b4d72296d9c4310fea6d5b61c20e33b18a6";
  };

  propagatedBuildInputs = [ summit-x-robot-control summit-x-control summit-x-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_x_sim metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
