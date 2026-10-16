
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-rtti, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-serialization";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_serialization/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "3e5454cd69dbdb2bd6c643b65d2d26c93026a882132564aacb8913150177011f";
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
