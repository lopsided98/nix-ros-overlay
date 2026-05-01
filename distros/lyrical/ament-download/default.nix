
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ament-download";
  version = "0.0.5-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/lyrical/ament_download/0.0.5-7.tar.gz";
    name = "0.0.5-7.tar.gz";
    sha256 = "c2a8240803b33a9faac31726cddf7bd66d5eae4b37e2106bc47c70a775616715";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros for downloading files with ament";
    license = with lib.licenses; [ asl20 ];
  };
}
