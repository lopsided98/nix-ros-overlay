
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-jazzy-gtsam";
  version = "4.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/jazzy/gtsam/4.2.0-4.tar.gz";
    name = "4.2.0-4.tar.gz";
    sha256 = "cd30a2e523cc5b42e3e9514ecef072df4e9c6a01a92ad713c26228031a58171d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
