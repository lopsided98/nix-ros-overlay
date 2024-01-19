
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, draco-point-cloud-transport }:
buildRosPackage {
  pname = "ros-noetic-point-cloud-transport-plugins";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/point_cloud_transport_plugins/-/archive/release/noetic/point_cloud_transport_plugins/1.0.5-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "038c65e020094f02186dc2d4a91125e4a395657a56e4b7906fef0df252b7d3ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ draco-point-cloud-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage with common point_cloud_transport plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
