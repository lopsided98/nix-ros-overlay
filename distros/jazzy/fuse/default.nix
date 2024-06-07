
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz }:
buildRosPackage {
  pname = "ros-jazzy-fuse";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1254fea0952740f8861475a5b70b6dcc23e4c4913f5c7e9e28d04a39afff1b4b";
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
