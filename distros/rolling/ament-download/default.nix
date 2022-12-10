
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-download";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/samsung-ros/ament_download-release/archive/release/rolling/ament_download/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "fda97acd7ecc5366b35398b05675e51f4b56caaec4a9db91748dfb98fea5e28d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
