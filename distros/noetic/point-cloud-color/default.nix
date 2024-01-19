
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, nodelet, point-cloud-transport, roscpp, sensor-msgs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-point-cloud-color";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/point_cloud_color/-/archive/release/noetic/point_cloud_color/1.2.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "7c9f25a7a7cbce6ddf390bab8a3e4488e6544f26ee541e5198e97d00d0906eef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport nodelet point-cloud-transport roscpp sensor-msgs tf2-eigen tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for coloring point clouds using calibrated cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
