
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-io";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_io/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "d27ede9560934e33d901219586fb6f60e7f8e9f67be55e447e494b19a3216dd5";
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
