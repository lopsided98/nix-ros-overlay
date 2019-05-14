
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, pcl-ros, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-obj-to-pointcloud";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/obj_to_pointcloud/0.4.0-1.tar.gz;
    sha256 = "89ac151944c62cfc999ab2942aade69984c90e017ffd609f68599bc93d34f4a1";
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
