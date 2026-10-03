
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, mrpt-common, mrpt-img, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-viz";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_viz/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "a9e266ca8b1c16b1f600392acd8c7e72ff1b2fc9b34fb734e945e0ffa545a287";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-img mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_viz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
