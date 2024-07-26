
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-kernel";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_kernel/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "7c4ac6adb595969caa0af5fd5e46a3296d0ce5af9699bfab63676a76f3c7a9ed";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Fundamental C++ virtual interfaces and data types for the rest of MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
