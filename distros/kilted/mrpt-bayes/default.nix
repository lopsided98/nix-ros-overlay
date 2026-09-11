
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-config, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-bayes";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_bayes/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "a8f8e363fdd88e3b80d815d9d91d4219dc4c86d71ee302a574ae91d6cd201f9d";
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
