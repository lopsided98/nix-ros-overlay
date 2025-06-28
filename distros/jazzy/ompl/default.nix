
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-ompl";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/jazzy/ompl/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "4a454cd0835d0da5d40ba1ea84eaba9be1c4bdd68570fbb2f02c4b0377c0122e";
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
