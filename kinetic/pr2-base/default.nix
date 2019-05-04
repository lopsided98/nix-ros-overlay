
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers, geometry2, moveit-pr2, perception, pr2-common-actions, joystick-drivers, pr2-kinematics, catkin, ros-realtime, pr2-apps, pr2-navigation, perception-pcl, pr2-calibration, warehouse-ros, pr2-mechanism, pr2-common, web-interface }:
buildRosPackage {
  pname = "ros-kinetic-pr2-base";
  version = "1.1.3";

  src = fetchurl {
    url = https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/pr2_base/1.1.3-0.tar.gz;
    sha256 = "889b3e7800a2ee7dd970064e1482ca96fd002d5a39bcb8462f793bfdebcd4e6c";
  };

  propagatedBuildInputs = [ pr2-controllers geometry2 perception moveit-pr2 pr2-common-actions joystick-drivers pr2-kinematics ros-realtime pr2-navigation pr2-apps perception-pcl pr2-calibration warehouse-ros pr2-mechanism pr2-common web-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
