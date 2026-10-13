
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-kinematics";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_kinematics/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "f73765e4173c2528351dc2626bfc49c0648b7d290db6823345ce660effdc5391";
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
