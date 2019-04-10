
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-tf2-py";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_py/0.5.20-0.tar.gz;
    sha256 = "e182e7cbeba37b27b9b79585d08011f75612996a4bdc663e8812c30c8ee93259";
  };

  buildInputs = [ tf2 rospy ];
  propagatedBuildInputs = [ tf2 rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tf2_py package'';
    #license = lib.licenses.BSD;
  };
}
