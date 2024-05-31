
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-plugins";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/point_cloud_transport_plugins/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "8e03a300a150c626d9599c032138541f4e79d32403b3e224a2a6bf9704950b33";
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
