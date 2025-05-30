
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libhwdrivers, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-video";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_video/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "b2e660ac3564873db26de9daa424b25e587d1ca75f8ffaffb9cfdc5e9d60e888";
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
