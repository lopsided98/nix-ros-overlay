
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-jazzy-point-cloud-transport-plugins";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/jazzy/point_cloud_transport_plugins/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "373a717656ff2cd1a4bc360b6e073459c6bbd35873428f5da7d2835cc3bfa6aa";
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
