
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, controller-manager, hardware-interface, std-msgs, serial, tf, catkin, pythonPackages, diff-drive-controller, roscpp, nav-msgs, rostest, joint-state-controller, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-ubiquity-motor";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/melodic/ubiquity_motor/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "fc7f93bc91f0b0839504df0bcec459794df081b9dfb9fe6bad99c747bb55f0bb";
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
