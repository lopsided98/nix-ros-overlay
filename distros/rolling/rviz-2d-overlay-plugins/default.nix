
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rviz-2d-overlay-msgs, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-2d-overlay-plugins";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_2d_overlay_plugins-release/archive/release/rolling/rviz_2d_overlay_plugins/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "0053929c49002560f587ecdeda49eedabbe140397c8eca9d6c3742d14dd3ae8a";
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
