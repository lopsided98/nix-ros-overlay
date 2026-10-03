
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-io";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_io/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "b626bac45547879bf563cc12c1fdb11af43693ff36d1a7980af3e8d61a6ffa59";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 zlib zstd ];
  propagatedBuildInputs = [ mrpt-common mrpt-serialization mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_io";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
