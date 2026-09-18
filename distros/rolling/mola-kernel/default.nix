
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-kernel";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_kernel/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "3a7d917688f56d68430c759cf90cf5350cfd9684040259cfd5059442f7e2e21d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt-libmaps mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Fundamental C++ virtual interfaces and data types for the rest of MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
