
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-rawlog";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_rawlog/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "acec80fdf8bb868605164c7cda8635c698c2d3552a1052dfe4cb3eab7c2dfa65";
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
