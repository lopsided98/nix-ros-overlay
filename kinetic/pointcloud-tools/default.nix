
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, std-msgs, catkin, vtk, pcl-conversions, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pointcloud-tools";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/srv/srv_tools-release/archive/release/kinetic/pointcloud_tools/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "747fc3d2106b4952cbc9120a73215752e9203421976c6dc3526d21254b6904ce";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs std-msgs vtk pcl-conversions roscpp nav-msgs ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs std-msgs vtk pcl-conversions roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pointcloud_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
