
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libgui, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-kernel";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_kernel/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "3ff3760d6ec7441822bbdea3be39ed29c5b3e04fd2180b17df96dfd0b27afffe";
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
