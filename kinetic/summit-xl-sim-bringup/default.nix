
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, summit-xl-control, catkin, summit-xl-description, summit-xl-pad, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-sim-bringup";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/summit_xl_sim_bringup/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "62393ea44759d966e34620bbcd2db13c0386e4c7643dccafbed50afdcf702293";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ summit-xl-pad summit-xl-description summit-xl-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for Summit XL simulation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
