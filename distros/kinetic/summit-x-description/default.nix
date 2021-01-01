
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, robotnik-sensors, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-description";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_x_common-release/archive/release/kinetic/summit_x_description/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "43a639d5d44313b61f8e731fb9baffb1ba9d71d7b02dbb77e4a53447ca8822cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher robotnik-sensors urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_x_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
