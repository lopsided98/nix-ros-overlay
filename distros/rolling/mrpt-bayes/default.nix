
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-config, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-bayes";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_bayes/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "63095b237248b68bd3fdb63b604665ba53a410cc65b381c489652928f720f9ad";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-config mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_bayes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
