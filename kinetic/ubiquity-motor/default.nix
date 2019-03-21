
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, tf, diff-drive-controller, serial, catkin, pythonPackages, rostest, nav-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ubiquity-motor";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/kinetic/ubiquity_motor/0.8.0-0.tar.gz;
    sha256 = "4ca5b22faa55acdeabdd9130761860769afbb7d3410bc591c4e54cc8eb5fdd7a";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller diff-drive-controller serial nav-msgs dynamic-reconfigure pythonPackages.requests tf geometry-msgs ];
  nativeBuildInputs = [ controller-manager hardware-interface serial catkin roscpp nav-msgs dynamic-reconfigure tf geometry-msgs ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    #license = lib.licenses.BSD;
  };
}
