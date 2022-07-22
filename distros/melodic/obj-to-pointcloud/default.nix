
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-obj-to-pointcloud";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/obj_to_pointcloud/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "1392cf82e43d5b8ba62485eb503210d947aad768f6fc32561148b248fccfb17a";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
