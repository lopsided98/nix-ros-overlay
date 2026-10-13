
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-recovery, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, openssl, rcl-logging-interface, rclcpp, rclcpp-lifecycle, rcutils, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-easynav-system";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_system/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "45cf93f13f8d11ec4733d2c50b44839b6e1c978e9c2dc79c85d23a90c486bf78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs easynav-common easynav-controller easynav-core easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-recovery easynav-sensors geometry-msgs lifecycle-msgs nav-msgs openssl rcl-logging-interface rclcpp rclcpp-lifecycle rcutils sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: System package.";
    license = with lib.licenses; [ asl20 ];
  };
}
