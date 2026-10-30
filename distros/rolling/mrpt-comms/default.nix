
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libftdi1, mrpt-common, mrpt-io, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-comms";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_comms/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "ab97c1d6f9d30bdf89abd95b873db9d3cfa48acfdf33e8588c112b7a65ae2f63";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-poses ];
  propagatedBuildInputs = [ libftdi1 mrpt-common mrpt-io ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_comms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
