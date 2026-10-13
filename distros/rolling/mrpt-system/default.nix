
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-containers, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-system";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_system/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "a5f702f904637cee8606c9b91c491752e71c89de29ba2d9e94d9054c5ced289e";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-containers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_system";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
