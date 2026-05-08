
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, gtest-vendor }:
buildRosPackage {
  pname = "ros-kilted-fuse-doc";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_doc/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "6702c8a423035f404182f58fd767af99f299657c72606c9a9487a8cdc205858c";
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
