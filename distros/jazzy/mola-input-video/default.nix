
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libhwdrivers, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-video";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_video/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "87020c2e9cbd51a0ffafb12920e1aee274c27c6aa51e3a2b106a47ec64f6d80a";
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
