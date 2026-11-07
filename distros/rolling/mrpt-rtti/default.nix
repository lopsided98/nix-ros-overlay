
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-rtti";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_rtti/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "9b62387374c1d46687ca2cb84ac9f84fd2452f1b47e0ddedd46a82accc353f29";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-core mrpt-typemeta ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_rtti";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
