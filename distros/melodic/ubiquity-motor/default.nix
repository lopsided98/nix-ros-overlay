
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, diff-drive-controller, dynamic-reconfigure, geometry-msgs, hardware-interface, joint-state-controller, nav-msgs, pythonPackages, roscpp, rostest, serial, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-ubiquity-motor";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/melodic/ubiquity_motor/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "fc7f93bc91f0b0839504df0bcec459794df081b9dfb9fe6bad99c747bb55f0bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater diff-drive-controller dynamic-reconfigure geometry-msgs hardware-interface joint-state-controller nav-msgs pythonPackages.requests serial std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
