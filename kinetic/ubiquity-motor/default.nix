
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, controller-manager, hardware-interface, std-msgs, serial, tf, catkin, pythonPackages, diff-drive-controller, roscpp, nav-msgs, rostest, joint-state-controller, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-ubiquity-motor";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/kinetic/ubiquity_motor/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "8239be9d6d3176b304be8141e206623e2642f2a2a963954064863fb3e04d88ac";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs controller-manager dynamic-reconfigure hardware-interface std-msgs serial tf roscpp nav-msgs diagnostic-updater ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs controller-manager dynamic-reconfigure hardware-interface std-msgs serial tf pythonPackages.requests diff-drive-controller diagnostic-updater nav-msgs joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ROS interface to Ubiquity Robotics Magni motor controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
