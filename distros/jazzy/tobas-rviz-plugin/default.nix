
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rsl, rviz-common, rviz-default-plugins, tf2-eigen, tobas-visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-plugin";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_plugin/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "c16697f4b73dd76e0b03db2f2978201af8dbb31efd1b03cd71889f3af5835344";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rsl rviz-common rviz-default-plugins tf2-eigen tobas-visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz display plugins for visualizing Tobas vehicles, models, trajectories, and sensor data.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
