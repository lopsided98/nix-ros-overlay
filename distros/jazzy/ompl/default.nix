
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-ompl";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/jazzy/ompl/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "4216f7f773c8c552bac6974d9c68cc07aa4167eb661693d07a278cf99a7a131e";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
