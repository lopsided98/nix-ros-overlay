
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, draco-point-cloud-transport }:
buildRosPackage {
  pname = "ros-melodic-point-cloud-transport-plugins";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/point_cloud_transport_plugins/-/archive/release/melodic/point_cloud_transport_plugins/1.0.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "45523d8fed826b961a2b185779b143f3b9742432e3fa3bca15753d55228b355f";
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
