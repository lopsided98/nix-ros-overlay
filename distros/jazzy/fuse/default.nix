
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz }:
buildRosPackage {
  pname = "ros-jazzy-fuse";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "c67a579c5bfe8692b8fb6c10b29139402d07f74c5c80e36aab2fd37e64b10d95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fuse-constraints fuse-core fuse-doc fuse-graphs fuse-models fuse-msgs fuse-optimizers fuse-publishers fuse-variables fuse-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse metapackage.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
