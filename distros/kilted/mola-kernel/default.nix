
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libgui, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-kilted-mola-kernel";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_kernel/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "0b9d36997aa19500a72784ac2b509af95157db1ca26027fe03c9a159983e266e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt-libgui mrpt-libmaps mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Fundamental C++ virtual interfaces and data types for the rest of MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
