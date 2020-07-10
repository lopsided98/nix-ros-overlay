
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, roslint }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pcl";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_pcl/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "4e9f1613629cc23ce3c56ffda7b0cfeb1abe11ff1994cb505fc4b31ec7d07f23";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The velodyne_pcl package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
