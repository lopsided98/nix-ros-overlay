
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-tfest, mrpt-viz, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-humble-mrpt-obs";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_obs/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "9cf845b029ff75a32761191d7a0453c22b5aab584dd916d23cfae2bf49aab4f0";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-tfest mrpt-viz tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_obs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
