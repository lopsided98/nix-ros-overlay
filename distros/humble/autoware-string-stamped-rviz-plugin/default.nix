
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-lint-common, rviz-2d-overlay-msgs, rviz-2d-overlay-plugins, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-autoware-string-stamped-rviz-plugin";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_string_stamped_rviz_plugin/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "97d9b88ac1cf7eae1578ecc99b1a3d8790d5136a923966fc53cc6fdbb19b0c5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp autoware-internal-debug-msgs rviz-2d-overlay-msgs rviz-2d-overlay-plugins rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "RViz2 plugin for displaying string stamped messages as 2D overlays in the 3D view.
    Inspired by the JSK overlay plugin. (https://github.com/jsk-ros-pkg/jsk_visualization))";
    license = with lib.licenses; [ asl20 ];
  };
}
