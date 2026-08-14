
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-kinematics, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-kilted-mrpt-nav";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_nav/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "61d7f27b4b91965b103a58b8301b4adc63a70a1cfc2726388f284c4a326f6db5";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-kinematics mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_nav";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
