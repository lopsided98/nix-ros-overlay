
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-comms, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-humble-mrpt-hwdrivers";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_hwdrivers/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "cda3ad221211573802565046f1c8606b6c70224ab5cc50be57842cad1b1bce8f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-comms mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_hwdrivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
