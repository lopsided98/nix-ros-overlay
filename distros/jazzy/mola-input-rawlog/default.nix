
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-rawlog";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_rawlog/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "b61efc0f1a4324c3d2e32802689701d4f30515407bd7b40a29df15759a8e27b3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
