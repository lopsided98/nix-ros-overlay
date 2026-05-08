
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-planning-msgs, autoware-utils, autoware-vehicle-info-utils, qt5, rclcpp, rviz-2d-overlay-msgs, rviz-2d-overlay-plugins, rviz-common, rviz-default-plugins, rviz-rendering, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-rviz-plugin";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_planning_rviz_plugin/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "de44117d727e4f7339e19dcc9ca8098630cceb983c3bb92fce854b4dfbaf5416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-planning-msgs autoware-utils autoware-vehicle-info-utils qt5.qtbase rclcpp rviz-2d-overlay-msgs rviz-2d-overlay-plugins rviz-common rviz-default-plugins rviz-rendering tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_planning_rviz_plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
