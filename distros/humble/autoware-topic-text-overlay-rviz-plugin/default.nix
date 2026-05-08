
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-lint-common, pluginlib, rclcpp, rviz-2d-overlay-msgs, rviz-2d-overlay-plugins, rviz-common, rviz-ogre-vendor, rviz-rendering, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-topic-text-overlay-rviz-plugin";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_topic_text_overlay_rviz_plugin/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "98ab3bc24dd4bd01880c1cc083ecd12ac526884ffd5a3803c7806decb4c164d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs pluginlib rclcpp rviz-2d-overlay-msgs rviz-2d-overlay-plugins rviz-common rviz-ogre-vendor rviz-rendering visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "RViz panel plugin for overlaying selected text topics in the 3D view.";
    license = with lib.licenses; [ asl20 ];
  };
}
