
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-humble-point-cloud-transport-plugins";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/point_cloud_transport_plugins/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "ac34d2415b970a2147e5ae09331909feea8af38561753f4d39362457d97355e9";
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
