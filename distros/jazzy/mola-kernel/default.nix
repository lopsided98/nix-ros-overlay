
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-yaml, mrpt-maps, mrpt-obs, mrpt-topography }:
buildRosPackage {
  pname = "ros-jazzy-mola-kernel";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_kernel/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "d4972a6ec9c212d2839c448de670c4c6f4066f05e856373c28e753c878bf01fc";
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
