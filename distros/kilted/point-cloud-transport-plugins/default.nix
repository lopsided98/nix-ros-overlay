
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-kilted-point-cloud-transport-plugins";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/kilted/point_cloud_transport_plugins/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "67e6c9c7c95f006f6601f51121c34056503b0b8e270cc948dce32cb260aac4e7";
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
