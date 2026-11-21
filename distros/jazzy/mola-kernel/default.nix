
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-yaml, mrpt-maps, mrpt-obs, mrpt-topography }:
buildRosPackage {
  pname = "ros-jazzy-mola-kernel";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_kernel/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "2a31c4eea0f9218e84b8a6ac7f99f84b6857a942d078ffd7b7d384f24c87a42b";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt-maps mrpt-obs mrpt-topography ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Fundamental C++ virtual interfaces and data types for the rest of MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
