
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, roslint }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pcl";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_pcl/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "d4dae03da906b8fa5814d3c20b469e637a6046d89d5130567474c1f4e9dadbe8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The velodyne_pcl package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
