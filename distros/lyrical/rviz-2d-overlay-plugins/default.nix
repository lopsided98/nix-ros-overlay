
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rviz-2d-overlay-msgs, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-2d-overlay-plugins";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_2d_overlay_plugins-release/archive/release/lyrical/rviz_2d_overlay_plugins/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "f41e54215a245d69153fb76ce96f31443ed8916b2e1bc893472432209c8c7bb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rviz-2d-overlay-msgs rviz-common rviz-ogre-vendor rviz-rendering std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz2 plugin for 2D overlays in the 3D view. Mainly a ROS2 port of the JSK overlay plugin
        (https://github.com/jsk-ros-pkg/jsk_visualization).";
    license = with lib.licenses; [ bsd3 ];
  };
}
