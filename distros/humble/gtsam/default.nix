
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb }:
buildRosPackage {
  pname = "ros-humble-gtsam";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/humble/gtsam/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "686bf4d4d0729a684d6fcfb4da6597b8c030802f16eb9631610abae4440aa84f";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
