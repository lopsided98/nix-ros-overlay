
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-download";
  version = "0.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/rolling/ament_download/0.0.5-6.tar.gz";
    name = "0.0.5-6.tar.gz";
    sha256 = "0646bfd9951de776129c62c4b00f2340de49a759e9215ef6302bfc92410a8da0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros for downloading files with ament";
    license = with lib.licenses; [ asl20 ];
  };
}
