
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-humble-ompl";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/humble/ompl/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "4ea0a05cf24d03e56e1d8e0cd01348b820954291b7a88d38bad1a9892cb7f420";
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
