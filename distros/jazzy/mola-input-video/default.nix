
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-hwdrivers, mrpt-obs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-video";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_video/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "a754f56d94cc7e9a21d07ef308056fbb30788602f2f64d2749270708adda6982";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-hwdrivers mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RawDataSource from live or offline video sources";
    license = with lib.licenses; [ gpl3Only ];
  };
}
