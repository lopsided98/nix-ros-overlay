
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-yaml, mrpt-maps, mrpt-obs, mrpt-topography }:
buildRosPackage {
  pname = "ros-lyrical-mola-kernel";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_kernel/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "1797b4b720f5e88ff00caf030e68688a01f9b050e115442adacd2749904a6e74";
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
