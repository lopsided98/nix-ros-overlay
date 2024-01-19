
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz }:
buildRosPackage {
  pname = "ros-iron-fuse";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/iron/fuse/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "4b102bd69bfe2af253882272bdd87379a253ec2bb0c3d2ecbee4449ab7fc6114";
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
