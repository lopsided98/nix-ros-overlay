
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-geometry-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_geometry_msgs/0.0.11-0.tar.gz;
    sha256 = "99b01a534d4e5d018e5ba2f55f4091e3ea1279940d0f99af9bb8c586f19aaeaf";
  };

  propagatedBuildInputs = [ message-runtime rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ message-generation rospy std-msgs catkin roscpp geometry-msgs ];

  meta = {
    description = ''The tuw_geometry_msgs package'';
    #license = lib.licenses.BSD;
  };
}
