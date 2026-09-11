
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-rtti";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_rtti/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "d662c2a6fc0faf5c8585d815dc20e5490d8387a92c6008a0831b03b0607a7487";
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
