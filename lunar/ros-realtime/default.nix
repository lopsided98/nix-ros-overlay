
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, catkin, allocators, lockfree, rosrt }:
buildRosPackage {
  pname = "ros-lunar-ros-realtime";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/lunar/ros_realtime/1.0.25-0.tar.gz;
    sha256 = "ea0c16817e4f73004eae11ec6a66ef25555604c438b27d18d0fea9c2c7c326e7";
  };

  propagatedBuildInputs = [ lockfree rosatomic allocators rosrt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_realtime package'';
    #license = lib.licenses.TODO;
  };
}
