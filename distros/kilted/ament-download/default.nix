
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-ament-download";
  version = "0.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/kilted/ament_download/0.0.5-6.tar.gz";
    name = "0.0.5-6.tar.gz";
    sha256 = "c338532b90a4f373b22ab84cb5799e3056acb93bca80edb0d1db3ac92d68ca92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros for downloading files with ament";
    license = with lib.licenses; [ asl20 ];
  };
}
