
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, diff-drive-controller, dynamic-reconfigure, geometry-msgs, hardware-interface, joint-state-controller, nav-msgs, python3Packages, roscpp, rostest, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ubiquity-motor";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/noetic/ubiquity_motor/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "3fde6fb69306cea15e1434c20645f5a6d0176e93e1afa13e12a9dea4911a2095";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater diff-drive-controller dynamic-reconfigure geometry-msgs hardware-interface joint-state-controller nav-msgs python3Packages.requests std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
