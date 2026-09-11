
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-rtti";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_rtti/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "66b8edac08d10d3a8e155874ef4c44c2a61b27c5498b0aa0e12fe8e41223daa8";
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
