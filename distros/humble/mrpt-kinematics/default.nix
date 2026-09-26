
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-kinematics";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_kinematics/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "32ffdddc921013498b30e69bcd284cd16d7779659ce0b209ee4e4c39667022af";
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
