
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-fuse-doc";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_doc/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "7e1a83f573b4b652a556b3811169a22b9beeed86196b8fde1731279e57669167";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-ros gtest-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_doc package provides documentation and examples for the fuse package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
