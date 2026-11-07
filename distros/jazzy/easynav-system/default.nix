
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-recovery, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, openssl, rcl-logging-interface, rclcpp, rclcpp-lifecycle, rcutils, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-system";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_system/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "7378e9edd56357b3a054b5a08e5c11eb957a7d6318fa966acd8484bee981f8e0";
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
