
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-tfest, mrpt-viz, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-obs";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_obs/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "ec0e0e36474014a97fcb9db234bac4aaeee965231f85edf2401b74891472b816";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 tinyxml-2 ];
  propagatedBuildInputs = [ mrpt-common mrpt-tfest mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_obs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
