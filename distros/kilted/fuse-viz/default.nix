
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, fuse-constraints, fuse-core, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, qt5, rviz-common, rviz-rendering, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-fuse-viz";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_viz/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "0ab5c4a4041782ec28380f01c4434f91aace3a3d3e5b1f557144b2f69d2f2174";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros eigen fuse-constraints fuse-core fuse-msgs fuse-variables geometry-msgs gtest-vendor rviz-common rviz-rendering tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_viz package provides visualization tools for fuse.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
