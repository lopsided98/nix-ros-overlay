
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-config, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-bayes";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_bayes/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "d2ebfe30baf0a8fbef55b76c41db35c4fdfb9c6d03b204c23a4835948f59566d";
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
