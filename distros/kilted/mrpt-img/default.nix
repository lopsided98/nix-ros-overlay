
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-config, mrpt-io, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-img";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_img/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "7a5b3659e70b20092ec1f5a170e7cfc2ee9c81a58a81c9e668bd639f719f11ee";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ glfw3 mrpt-common mrpt-config mrpt-io mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_img";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
