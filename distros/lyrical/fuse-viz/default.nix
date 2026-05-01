
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, fuse-constraints, fuse-core, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, qt5, rviz-common, rviz-rendering, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-fuse-viz";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_viz/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "aeffbd08cb3ceae4e4b448286cb96221fc783c44c398ecf2ac5217ec02b49627";
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
