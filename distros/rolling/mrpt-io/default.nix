
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-rolling-mrpt-io";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_io/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a5b4a612ad3c9ffa4551a9c4aa5d44e22560a48ccdd41af568e2d031b208696a";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 zstd ];
  propagatedBuildInputs = [ mrpt-common mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_io";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
