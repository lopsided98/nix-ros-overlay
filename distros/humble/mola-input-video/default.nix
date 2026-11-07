
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-hwdrivers, mrpt-obs }:
buildRosPackage {
  pname = "ros-humble-mola-input-video";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_video/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "7d3409a1d781f5298dbde17731fe2b623e5c1f6987dd0397f75b82b685e57c43";
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
