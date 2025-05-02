
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmath, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-input-euroc-dataset";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_euroc_dataset/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "e6157c5424aa1fefd679f09ced2fd0ef57ddebd4e3caab8df8b18ff16408e7bc";
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
