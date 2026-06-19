
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-comms, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-hwdrivers";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_hwdrivers/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "089ca447888e0c6e65d623d6ac01b3b52c978bb15cda0361e5f4ec7eb0ccd269";
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
