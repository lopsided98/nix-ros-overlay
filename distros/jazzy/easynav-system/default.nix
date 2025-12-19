
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-system";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_system/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "0f6266b058f1c866a8298a45757e6af98b8f709734473d20f5297db4217e63da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-controller easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-sensors geometry-msgs lifecycle-msgs nav-msgs rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: System package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
