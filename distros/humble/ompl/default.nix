
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-humble-ompl";
  version = "1.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/humble/ompl/1.7.0-3.tar.gz";
    name = "1.7.0-3.tar.gz";
    sha256 = "50ef6808e3f4260f31f252c7e685728321488aa6c44fb29f7dc08d6dbd87c1cd";
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
