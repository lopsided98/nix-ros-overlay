
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libhwdrivers, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-input-video";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_video/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "54d5afd68e28ae8c7eefa75d313b2cc5b922a5c75ca1fde0054eb98d93238994";
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
