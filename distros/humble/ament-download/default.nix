
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ament-download";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/humble/ament_download/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "531c9b9a5ec77687257edfc3bf46cbc17458c596eda66f434974c38f9a4945e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
