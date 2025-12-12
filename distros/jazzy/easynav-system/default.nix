
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-system";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_system/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "5c31ad07e5917d8b91ed8b40179efbf81ed3ba27a03dce7d0d0ce189f2c8dac4";
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
