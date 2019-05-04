
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, tf, diff-drive-controller, serial, catkin, pythonPackages, diagnostic-updater, rostest, nav-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ubiquity-motor";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/kinetic/ubiquity_motor/0.9.0-0.tar.gz;
    sha256 = "9fc2cb0b76cf7f26025527c1ff66f0c7851f216ebbe880bf7791f3e44d2c6fa2";
  };

  buildInputs = [ controller-manager hardware-interface tf serial diagnostic-updater nav-msgs dynamic-reconfigure roscpp geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller diff-drive-controller serial diagnostic-updater nav-msgs dynamic-reconfigure pythonPackages.requests tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
