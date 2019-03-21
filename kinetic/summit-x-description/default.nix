
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, robot-state-publisher, xacro, robotnik-sensors }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-description";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_x_common-release/archive/release/kinetic/summit_x_description/0.1.0-0.tar.gz;
    sha256 = "43a639d5d44313b61f8e731fb9baffb1ba9d71d7b02dbb77e4a53447ca8822cb";
  };

  propagatedBuildInputs = [ robotnik-sensors urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ urdf robot-state-publisher catkin xacro robotnik-sensors ];

  meta = {
    description = ''The summit_x_description package'';
    #license = lib.licenses.BSD;
  };
}
