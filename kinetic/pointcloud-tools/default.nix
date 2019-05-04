
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, nav-msgs, pcl-ros, std-msgs, vtk, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-pointcloud-tools";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/srv/srv_tools-release/archive/release/kinetic/pointcloud_tools/0.0.3-0.tar.gz;
    sha256 = "747fc3d2106b4952cbc9120a73215752e9203421976c6dc3526d21254b6904ce";
  };

  buildInputs = [ sensor-msgs nav-msgs pcl-ros std-msgs vtk roscpp pcl-conversions ];
  propagatedBuildInputs = [ sensor-msgs nav-msgs pcl-ros std-msgs vtk roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pointcloud_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
