
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, eigen, opencv }:
buildRosPackage {
  pname = "ros-rolling-apriltag-mit";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_mit-release/archive/release/rolling/apriltag_mit/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "44595f58886501618069cb19c2215c4d96c5f04f3dfe7ff2d5c1a833e01c1d83";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost clang eigen opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "ROS2 package wrapper for the MIT apriltag detector";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
