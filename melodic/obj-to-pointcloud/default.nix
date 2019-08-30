
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, pcl, sensor-msgs, catkin, rostest, neonavigation-common, eigen, eigen-conversions, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-obj-to-pointcloud";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/obj_to_pointcloud/0.4.2-1.tar.gz;
    sha256 = "9a0e581437520788936a74c2e47d4571f752dfac0a7a8953ecb65abec978fbd3";
  };

  buildInputs = [ pcl sensor-msgs neonavigation-common eigen eigen-conversions roscpp pcl-conversions geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ pcl sensor-msgs neonavigation-common eigen eigen-conversions roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
