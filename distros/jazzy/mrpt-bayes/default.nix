
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-config, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-bayes";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_bayes/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "8d4cad78e6ceaa9f20ed872d561df33128cbcb26dc601c9181fe0cdf55ac8b8e";
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
