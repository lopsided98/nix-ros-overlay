
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, gtest-vendor }:
buildRosPackage {
  pname = "ros-kilted-fuse-doc";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_doc/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "53ce8bdfe6fa6ee381f33736a4991b5eb7538c8659222602e196075304ec498b";
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
