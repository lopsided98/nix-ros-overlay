
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, magni-nav, magni-viz, magni-demos, catkin, magni-teleop, magni-description, magni-bringup }:
buildRosPackage {
  pname = "ros-kinetic-magni-robot";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_robot/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "767230ba5af5c961dad535fb18cfc8d30e80c17653e8008f1414d8c58d4b2907";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ magni-nav magni-viz magni-demos magni-teleop magni-description magni-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_robot package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
