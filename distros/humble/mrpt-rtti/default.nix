
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-rtti";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_rtti/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "e03a3cbdb11c6e8bce5d74325eaff9358ba44eb73abab63c1568d0101e876a58";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-core mrpt-typemeta ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_rtti";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
