
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libhwdrivers, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-video";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_video/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "8d8a39ed0a74075a54d64deed45ed10edd466f4196fe8859b813b20ae8d4f212";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libhwdrivers mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RawDataSource from live or offline video sources";
    license = with lib.licenses; [ gpl3Only ];
  };
}
