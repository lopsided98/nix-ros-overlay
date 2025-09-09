
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-humble-ompl";
  version = "1.7.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/humble/ompl/1.7.0-4.tar.gz";
    name = "1.7.0-4.tar.gz";
    sha256 = "c81602d084e8b44fe1345ec5bde679b7ed1b122ee277f156bc916a5b19e1b17e";
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
