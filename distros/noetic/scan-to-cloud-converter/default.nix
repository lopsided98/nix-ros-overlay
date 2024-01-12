
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl, pcl-conversions, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-scan-to-cloud-converter";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/scan_to_cloud_converter/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "b86699c1fe53112a6da75138e820f3e73534d5a03dec254919e983c0b702aa02";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl pcl-conversions pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts LaserScan to PointCloud messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
