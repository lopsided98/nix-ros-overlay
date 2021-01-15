
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl, pcl-conversions, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-scan-to-cloud-converter";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/scan_to_cloud_converter/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "bcfa4da677e54989fbe02414166c39ac0f26c6b364d1bd1c81725557c6afc7a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl pcl-conversions pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts LaserScan to PointCloud messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
