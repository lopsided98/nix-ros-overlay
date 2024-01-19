
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, diff-drive-controller, dynamic-reconfigure, geometry-msgs, hardware-interface, joint-state-controller, message-generation, message-runtime, nav-msgs, python3Packages, roscpp, rostest, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ubiquity-motor";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/noetic/ubiquity_motor/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "5586a39112e8b8cea95553c554d1203215d4db84e89cd1c826cd7d368b875c74";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater diff-drive-controller dynamic-reconfigure geometry-msgs hardware-interface joint-state-controller message-runtime nav-msgs python3Packages.requests std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
