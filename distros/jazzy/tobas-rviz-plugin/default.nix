
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rsl, rviz-common, rviz-default-plugins, tf2-eigen, tobas-visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-plugin";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_plugin/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "8ffa273b93e010c15c599b182c1399e162895e7f5a04e2fa0190cfaccd8424c8";
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
