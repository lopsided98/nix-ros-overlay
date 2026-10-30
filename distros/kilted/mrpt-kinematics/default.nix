
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-kinematics";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_kinematics/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "a7c4c3680a25d0e8b0ec47c7674d00693db14c21b74ca4ae37e81d4af3bfef3a";
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
