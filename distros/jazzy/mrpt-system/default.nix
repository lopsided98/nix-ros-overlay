
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-containers, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-system";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_system/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "b8794c9c5441fd53e61db52b6f9ea6702163d86cf76750739145be90aaeea767";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-containers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_system";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
