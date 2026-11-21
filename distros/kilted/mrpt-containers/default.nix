
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-containers";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_containers/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "8132d0bb8892f7336dd2fdc2079a7ae32208cd0a0f7a9098e4f8d39e9cd7433a";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-core mrpt-typemeta ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_containers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
