
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl, pcl-conversions, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-scan-to-cloud-converter";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/scan_to_cloud_converter/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "005fe4afd4fcd083d4dab47ef1cc4d0eb151b02829ae642921eab81068cbe276";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl pcl-conversions pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts LaserScan to PointCloud messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
