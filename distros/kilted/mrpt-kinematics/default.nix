
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-kinematics";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_kinematics/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "69abc5b02c734765e698a061c95e2157647bb1b00f5b6dc1b2612ef2f88a7e4b";
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
