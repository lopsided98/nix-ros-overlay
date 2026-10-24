
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-core, easynav-planner, easynav-sensors, easynav-system, geometry-msgs, lifecycle-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-regulated-pp-controller";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_regulated_pp_controller/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "354e4f662876fe792391a964ef1fc396fa0e0f87c6c661d8e3bdc1e34db7289d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-controller easynav-planner lifecycle-msgs rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors easynav-system geometry-msgs nav-msgs pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: port of the Nav2 Regulated Pure Pursuit Controller.";
    license = with lib.licenses; [ asl20 ];
  };
}
