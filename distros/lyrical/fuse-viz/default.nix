
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, fuse-constraints, fuse-core, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, qt5, rviz-common, rviz-rendering, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-fuse-viz";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_viz/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "5e6c71ad126e1627e6c7496f32361c82a3a0559c131d8e4bd1236cc5f8d9fc24";
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
