
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-gazebo, mir-dwb-critics, mir-description, mir-actions, mir-navigation, mir-driver, mir-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-robot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_robot/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1be447be46d3485524682a594f9f55d972b07c44b4e29e31c2c57105530be475";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mir-description mir-gazebo mir-dwb-critics mir-actions mir-navigation mir-driver mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
