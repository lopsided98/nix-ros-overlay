
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-core, easynav-costmap-common, easynav-diagnostic-recovery, easynav-localizer, easynav-sensors, eigen, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-costmap-localizer";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_costmap_localizer/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "166c68070a8f362833f8f57c3b064e3ac018133f0738913958c140b71442cd4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ diagnostic-msgs easynav-common easynav-core easynav-costmap-common easynav-diagnostic-recovery easynav-localizer easynav-sensors eigen geometry-msgs nav-msgs pluginlib rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Costmap Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
