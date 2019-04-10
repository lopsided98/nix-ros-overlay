
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, pcl-ros, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-lunar-obj-to-pointcloud";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/obj_to_pointcloud/0.3.1-0.tar.gz;
    sha256 = "1021e85bb4c5a117fc73958d5715324b1afd740166c73a7385cf1d21b7e62161";
  };

  buildInputs = [ pcl-ros neonavigation-common eigen sensor-msgs roscpp eigen-conversions geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ pcl-ros neonavigation-common eigen sensor-msgs roscpp eigen-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    #license = lib.licenses.BSD;
  };
}
