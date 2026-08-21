
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-fuse-doc";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_doc/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "4bceed700787175e59d7b4b34d72ea764515a05121b25232e0e56f9532f89c66";
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
