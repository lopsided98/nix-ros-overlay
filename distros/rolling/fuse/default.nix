
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz }:
buildRosPackage {
  pname = "ros-rolling-fuse";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "f39685e4a97bf4c0acbb8b1c212e71f1c41084fc8fd60bb1a1a54f692a363f7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fuse-constraints fuse-core fuse-doc fuse-graphs fuse-models fuse-msgs fuse-optimizers fuse-publishers fuse-variables fuse-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The fuse metapackage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
