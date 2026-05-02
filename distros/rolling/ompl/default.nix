
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "1.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/1.7.0-3.tar.gz";
    name = "1.7.0-3.tar.gz";
    sha256 = "b8dabcb6e5ca2893e999e61ebb059f96f370e8e02f608d99e6e9e64eba44cac4";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
