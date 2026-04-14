
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-humble-point-cloud-transport-plugins";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/point_cloud_transport_plugins/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "4cb32e665bbcbbcd5509ed16c45d08b8513e9b9b7cb83f28f5fe059746b8b0d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ draco-point-cloud-transport point-cloud-interfaces zlib-point-cloud-transport zstd-point-cloud-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage with common point_cloud_transport plugins";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
