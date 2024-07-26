
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-demos";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_demos/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "0695d90a324bd93f8b3e8efcc49c1765ff913597e705acc44c026ee207e0cffd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's demo launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
