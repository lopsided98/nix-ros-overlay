
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-lint-common, autoware-vehicle-info-utils, geometry-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-localization-rviz-plugin";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_localization_rviz_plugin/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "8ea34fc279a37c8c3e6e5289a986affb81fa037653835c4d901e12f8af8d1bfe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-vehicle-info-utils geometry-msgs qt5.qtbase rclcpp rviz-common rviz-default-plugins tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_localization_rviz_plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
