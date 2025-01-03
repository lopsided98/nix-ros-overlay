
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-fuse-doc";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_doc/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "87e410a4557754e672e16cd1823ea0c6ed029906ef0e6f5695ae6c3efbb0cf05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_doc package provides documentation and examples for the fuse package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
