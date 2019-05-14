
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, pcl-ros, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-lunar-obj-to-pointcloud";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/obj_to_pointcloud/0.4.0-1.tar.gz;
    sha256 = "8c27de05ca9db1f0d90a95493698a0def90479abb28548039ac25c3b861e3e64";
  };

  buildInputs = [ sensor-msgs neonavigation-common eigen eigen-conversions roscpp pcl-ros geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ sensor-msgs neonavigation-common eigen eigen-conversions roscpp pcl-ros geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
