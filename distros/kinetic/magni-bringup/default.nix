
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chrony, controller-manager, diff-drive-controller, joint-state-controller, magni-description, robot-state-publisher, ubiquity-motor }:
buildRosPackage {
  pname = "ros-kinetic-magni-bringup";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_bringup/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "5f42c955517e59a7a529056041cfba1dd5644e38d403a2003eaf1d0447b518ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chrony controller-manager diff-drive-controller joint-state-controller magni-description robot-state-publisher ubiquity-motor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
