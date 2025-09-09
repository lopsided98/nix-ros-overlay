
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-jazzy-fuse-doc";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_doc/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "93702cdf918207a5f20d51b1fd664a9b0c6df291f2708016dcf7ea829653324e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_doc package provides documentation and examples for the fuse package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
