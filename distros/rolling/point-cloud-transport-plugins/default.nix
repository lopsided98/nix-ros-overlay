
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-plugins";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/point_cloud_transport_plugins/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "ac3ad370dc425647f13980949064745cbd5e7bf15acd264ae439f4aa25044b21";
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
