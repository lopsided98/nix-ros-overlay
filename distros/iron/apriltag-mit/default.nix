
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, eigen, opencv }:
buildRosPackage {
  pname = "ros-iron-apriltag-mit";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_mit-release/archive/release/iron/apriltag_mit/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "54665f0fd4a78fb376c6b25446ca99d3cc3d05073c069c855a63294562ce69c0";
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
