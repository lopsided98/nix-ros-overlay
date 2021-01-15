
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-kinetic-robot-indicator";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/LucidOne-release/robot_indicator/archive/release/kinetic/robot_indicator/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "c8a5274a5f343b7822cbf77a2f77a293d89041d971092ce5fe0dc27671db510c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Robot Status Indicator'';
    license = with lib.licenses; [ "TODO" ];
  };
}
