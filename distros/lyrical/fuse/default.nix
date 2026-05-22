
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz, gtest-vendor }:
buildRosPackage {
  pname = "ros-lyrical-fuse";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "d8e3f815d4424318bb72a506863874ddd2af38603a52d6e92a19e7b2eb41c0b6";
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
