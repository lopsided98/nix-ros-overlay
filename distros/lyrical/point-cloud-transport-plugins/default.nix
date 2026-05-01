
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-lyrical-point-cloud-transport-plugins";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/lyrical/point_cloud_transport_plugins/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "02e85e51b57b4145f54eb9dd7057b2e747c82aa84e5df1ff0ffd5521873db70f";
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
