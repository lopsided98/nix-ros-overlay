
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-hwdrivers, mrpt-obs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-video";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_video/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "ad87407d526c619ea618a146e021c2273bea6eda31373a5c99ec9dcc35ea72d1";
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
