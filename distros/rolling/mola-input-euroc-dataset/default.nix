
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmath, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-input-euroc-dataset";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_euroc_dataset/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "febfd9a9625138ba26b2cc0f6ca14ad68d81b5120d1e1a4a4f3c38f4d53a845d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmath mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from EUROC SLAM datasets";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
