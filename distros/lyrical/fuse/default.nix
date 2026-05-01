
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz, gtest-vendor }:
buildRosPackage {
  pname = "ros-lyrical-fuse";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "fd89ac382430ff1b24500ccac9d925155d32a7af4cac6f178767adfaef186835";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-ros fuse-constraints fuse-core fuse-doc fuse-graphs fuse-models fuse-msgs fuse-optimizers fuse-publishers fuse-variables fuse-viz gtest-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse metapackage.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
