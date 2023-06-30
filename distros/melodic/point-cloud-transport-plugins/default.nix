
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, draco-point-cloud-transport }:
buildRosPackage {
  pname = "ros-melodic-point-cloud-transport-plugins";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/point_cloud_transport_plugins/-/archive/release/melodic/point_cloud_transport_plugins/1.0.5-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "b7d1dd4ff02a511b6e42035a9d5d8ef0cc7047fb886b306de1c0a7f019daccd6";
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
