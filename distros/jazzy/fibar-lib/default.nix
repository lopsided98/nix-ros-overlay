
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, gtest }:
buildRosPackage {
  pname = "ros-jazzy-fibar-lib";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fibar_lib-release/archive/release/jazzy/fibar_lib/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "9aec46df32d31684cbd22a0bf2e37d0ec723d436b9e6552c9ab8c56581ce8481";
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
