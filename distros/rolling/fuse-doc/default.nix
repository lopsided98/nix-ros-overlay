
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-fuse-doc";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_doc/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "e87d64865269cbb27f1b92a6348da690dc9780134f9ab89772173ee9d2c6e36c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_doc package provides documentation and examples for the fuse package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
