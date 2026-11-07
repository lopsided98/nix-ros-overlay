
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-kinematics";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_kinematics/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "ebec7f25a8b887fc1895d0d5c7af6b47fc3eda35771b8873e8645a7576dd8cc0";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_kinematics";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
