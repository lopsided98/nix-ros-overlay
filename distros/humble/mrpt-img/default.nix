
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-config, mrpt-io, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-img";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_img/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "a42ceb8b822c11f2b6898ac6ee34d78d91d71e5a59db23283ac1e69e0ed927d7";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen glfw3 python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-config mrpt-io mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_img";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
