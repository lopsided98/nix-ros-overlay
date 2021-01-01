
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, diff-drive-controller, dynamic-reconfigure, geometry-msgs, hardware-interface, joint-state-controller, nav-msgs, pythonPackages, roscpp, rostest, serial, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-ubiquity-motor";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/kinetic/ubiquity_motor/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "8239be9d6d3176b304be8141e206623e2642f2a2a963954064863fb3e04d88ac";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater diff-drive-controller dynamic-reconfigure geometry-msgs hardware-interface joint-state-controller nav-msgs pythonPackages.requests serial std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
