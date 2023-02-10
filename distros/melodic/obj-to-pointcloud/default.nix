
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-obj-to-pointcloud";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/obj_to_pointcloud/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "e4514c10461b381922b85c1e400921110c15a762b2106f979ea0994b9de6f16f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
