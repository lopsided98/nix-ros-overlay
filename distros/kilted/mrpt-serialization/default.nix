
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-rtti, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-serialization";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_serialization/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "f0e415239b042f43ba58ba59dfa2d0c2780c9d7104950c0956f163c82d23535f";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-rtti ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_serialization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
