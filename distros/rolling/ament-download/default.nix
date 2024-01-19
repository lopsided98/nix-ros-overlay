
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-download";
  version = "0.0.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/rolling/ament_download/0.0.5-4.tar.gz";
    name = "0.0.5-4.tar.gz";
    sha256 = "185ca2a08f1f79537e67c1ec947cd089813ae6f995e41e781df28b779a715dcc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
