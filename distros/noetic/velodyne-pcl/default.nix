
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, roslint }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pcl";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_pcl/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "08d0a84826d952dc1b0ae6cec5909fcb70a291dcd96f817cf54a34e24024751e";
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
