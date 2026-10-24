
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-core";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_core/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "9ded471b4b6a15d8b16b7f3d0443b8581001ee02a87707f02a0a39537f530455";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_core";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
