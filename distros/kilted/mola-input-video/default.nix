
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libhwdrivers, mrpt-libobs }:
buildRosPackage {
  pname = "ros-kilted-mola-input-video";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_video/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "f10788ca571329b0885c97fc1837d3717cf7c33debdc2543f5ef5e836c6b37a9";
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
