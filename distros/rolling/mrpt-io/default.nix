
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-rolling-mrpt-io";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_io/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "db084767b2f7e0e08c155f25dc69f7495c73d6fe31bfb1d8347d27506dca7949";
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
