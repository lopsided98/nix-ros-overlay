
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-iron-point-cloud-transport-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/point_cloud_transport_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "3d8d5f8963eef58eee86c41d23f9658df39edcd6a5f0811f379aa2d016b081c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ draco-point-cloud-transport point-cloud-interfaces zlib-point-cloud-transport zstd-point-cloud-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage with common point_cloud_transport plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
