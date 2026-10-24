
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-containers, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-system";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_system/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "b27ddbb674437ff1c9e092b4b66d3d7432e315abe09730fb85034b57ab80c6c0";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-containers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_system";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
