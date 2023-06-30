
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, nodelet, point-cloud-transport, roscpp, sensor-msgs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-point-cloud-color";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/point_cloud_color/-/archive/release/melodic/point_cloud_color/1.2.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "dec704b3ca07a05afd49c2a4c7df7d2fd1a03b390dd87576560338dfce49dd14";
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
