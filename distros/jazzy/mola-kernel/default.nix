
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libgui, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-kernel";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_kernel/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "1918d52ebab960720ffcb19948b17583a58622d6b13034213bc9c33415eb4557";
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
