
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, mrpt-common, mrpt-img, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-viz";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_viz/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e3f501c9a3a69fdc47f84324b91b2681baa12a2ec0cbd15fd38288c593407451";
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
