
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, gtest-vendor }:
buildRosPackage {
  pname = "ros-kilted-fuse-doc";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_doc/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "b65e463c6e50800285eae05fc24e8d9624f7d13e2dae1c4f78e1d6e1008c25db";
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
