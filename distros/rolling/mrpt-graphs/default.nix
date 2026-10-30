
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-poses, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-graphs";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_graphs/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "2bc0215ab7ee6a5c7d650f17aed602a6fd180c3b352a31c1e20460f713236628";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-io mrpt-poses mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_graphs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
