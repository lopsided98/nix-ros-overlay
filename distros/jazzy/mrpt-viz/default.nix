
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, mrpt-common, mrpt-img, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-viz";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_viz/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "55eb0127dd32eae2077d9ad1dfa74857b85dd60a3b06f430d8f2dabbf96a6011";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ assimp mrpt-common mrpt-img mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_viz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
