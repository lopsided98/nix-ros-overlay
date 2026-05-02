
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-fibar-lib";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fibar_lib-release/archive/release/rolling/fibar_lib/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "0c6e8dc5f5e182f86fc585b80d41fd31633b5e929961834b18f495eeefe3ada7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ clang ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "FIBAR event image reconstruction library";
    license = with lib.licenses; [ asl20 ];
  };
}
