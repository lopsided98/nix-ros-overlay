
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-humble-mrpt-io";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_io/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "2982551339b14a4df5b1ee76c1bf385cab9f64348abd39e0dc46ddedffa4bbc6";
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
