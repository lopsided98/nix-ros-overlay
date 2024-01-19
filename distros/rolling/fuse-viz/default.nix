
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, fuse-constraints, fuse-core, fuse-msgs, fuse-variables, geometry-msgs, qt5, rviz-common, rviz-rendering, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-fuse-viz";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_viz/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "1abdf198c01be5c1a0a0e252856c9557a0681494ac85492fe632b2df2cf259d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen fuse-constraints fuse-core fuse-msgs fuse-variables geometry-msgs rviz-common rviz-rendering tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_viz package provides visualization tools for fuse.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
