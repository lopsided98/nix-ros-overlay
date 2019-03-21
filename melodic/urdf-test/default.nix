
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro, rospy }:
buildRosPackage {
  pname = "ros-melodic-urdf-test";
  version = "1.0.4";

  src = fetchurl {
    url = https://github.com/pal-gbp/urdf_test-release/archive/release/melodic/urdf_test/1.0.4-0.tar.gz;
    sha256 = "0c218b7644479fe4c625fd32883d1e45d945f3662f73152e60e45bbf3cabc8b0";
  };

  propagatedBuildInputs = [ xacro rospy ];
  nativeBuildInputs = [ catkin rospy ];

  meta = {
    description = ''The urdf_test package'';
    #license = lib.licenses.Proprietary;
  };
}
