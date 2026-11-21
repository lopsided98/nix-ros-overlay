
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-io";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_io/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "25a85b850a034dd7a184a4dfeaafb047ce2d8f1fcbe64761c2ed8a50765a5637";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-serialization mrpt-system zlib zstd ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_io";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
