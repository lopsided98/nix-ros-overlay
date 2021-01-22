
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry2, joystick-drivers, moveit-pr2, perception, perception-pcl, pr2-apps, pr2-calibration, pr2-common, pr2-common-actions, pr2-controllers, pr2-kinematics, pr2-mechanism, pr2-navigation, ros-realtime, warehouse-ros, web-interface }:
buildRosPackage {
  pname = "ros-kinetic-pr2-base";
  version = "1.1.3";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/pr2_base/1.1.3-0.tar.gz";
    name = "1.1.3-0.tar.gz";
    sha256 = "889b3e7800a2ee7dd970064e1482ca96fd002d5a39bcb8462f793bfdebcd4e6c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry2 joystick-drivers moveit-pr2 perception perception-pcl pr2-apps pr2-calibration pr2-common pr2-common-actions pr2-controllers pr2-kinematics pr2-mechanism pr2-navigation ros-realtime warehouse-ros web-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
