
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libftdi1, mrpt-common, mrpt-io, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-comms";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_comms/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "7d6acc958071323d1bf5813a0eadf56b2658c4de3c3309799670036d9c2beb93";
  };

  buildType = "cmake";
  buildInputs = [ cmake libftdi1 python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-poses ];
  propagatedBuildInputs = [ mrpt-common mrpt-io ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_comms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
