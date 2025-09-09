
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-fuse";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "24463f7fac295b65f925985acdb4d182c677a683ce02e7cc745c4c0285e4107d";
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
