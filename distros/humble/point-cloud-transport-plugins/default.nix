
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, draco-point-cloud-transport, point-cloud-interfaces, zlib-point-cloud-transport, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-humble-point-cloud-transport-plugins";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/point_cloud_transport_plugins/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "cafc70a45a533aa9235f610aa34f94d9665373a248ce790aaa990592faade3cf";
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
