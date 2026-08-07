
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-kernel";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_kernel/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "503b6f96e7a99c5784a96f6be8118b250e80449bb22c481bee5963c3621d8cfc";
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
