
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-tfest";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_tfest/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "515409edaa5fe83c9f8d2a8fb7265945391c3565be10c259b5f7d3b29c875ea2";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_tfest";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
