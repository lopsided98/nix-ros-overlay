
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rsl, rviz-common, rviz-default-plugins, tf2-eigen, tobas-visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-plugin";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_plugin/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "282ff94fc6b463f24cee3c565e12b06cdcd433fdd68e1ca2868c4f001f4db19e";
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
