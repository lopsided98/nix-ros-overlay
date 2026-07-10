
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-rtti, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-serialization";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_serialization/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "52a77869c962108ab00c1d782a90fc0a2dce80e0e8b87ff42d71f2e1cf4bbd8f";
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
