
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, mrpt-common, mrpt-img, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-viz";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_viz/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "691a7266710e7657d7165e3f711d802599a0503f627b1f70ca601d862000373f";
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
