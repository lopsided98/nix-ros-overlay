
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-comms, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-rolling-mrpt-hwdrivers";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_hwdrivers/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "acf28b5bef5d3fbe7a8a3143808862522a1de65bfefe0b9aca73327f5d0987f9";
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
