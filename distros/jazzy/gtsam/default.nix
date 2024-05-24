
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-jazzy-gtsam";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/jazzy/gtsam/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "c0de7d0f46dda04f4def11631d183a3a12bfb1d6ed86ca291ce1fbf8253c2e1d";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
