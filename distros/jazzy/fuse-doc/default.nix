
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-jazzy-fuse-doc";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_doc/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "d016343907e7d99b9c9085bd18a6d12183ddf7b608f2b4e2e05c89bacbe8f076";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_doc package provides documentation and examples for the fuse package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
