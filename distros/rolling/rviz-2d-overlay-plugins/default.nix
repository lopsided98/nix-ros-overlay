
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rviz-2d-overlay-msgs, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-2d-overlay-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_2d_overlay_plugins-release/archive/release/rolling/rviz_2d_overlay_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d80fe007edc7061b3f94639a305bf1300eeb53833363277ae64306675d4152e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rviz-2d-overlay-msgs rviz-common rviz-ogre-vendor rviz-rendering std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RViz2 plugin for 2D overlays in the 3D view. Mainly a ROS2 port of the JSK overlay plugin
        (https://github.com/jsk-ros-pkg/jsk_visualization).'';
    license = with lib.licenses; [ bsd3 ];
  };
}
