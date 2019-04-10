
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-gazebo, mir-description, mir-dwb-critics, mir-actions, mir-driver, mir-navigation, mir-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-robot";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_robot/1.0.3-0.tar.gz;
    sha256 = "d78d93da52d71506e61d8412ecf46a96e1915a1b0ee698db37c3d6a0ba2427c2";
  };

  propagatedBuildInputs = [ mir-actions mir-driver mir-navigation mir-description mir-dwb-critics mir-gazebo mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    #license = lib.licenses.BSD;
  };
}
