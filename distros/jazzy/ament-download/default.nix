
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ament-download";
  version = "0.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/jazzy/ament_download/0.0.5-6.tar.gz";
    name = "0.0.5-6.tar.gz";
    sha256 = "227c1e0813d68f5f25401be9aeb09c7ec730559bd2680e57043135b9d8853421";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros for downloading files with ament";
    license = with lib.licenses; [ asl20 ];
  };
}
