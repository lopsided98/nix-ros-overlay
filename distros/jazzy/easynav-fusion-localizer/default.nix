
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, diagnostic-msgs, diagnostic-updater, easynav-common, easynav-core, easynav-localizer, easynav-sensors, eigen, geographic-msgs, geographiclib, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, robot-localization, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-fusion-localizer";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_fusion_localizer/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c172ae1caadff7992646de3a4f7e4e0e089d7642fe37a66137f17e6c9c3bf08d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common robot-localization ];
  propagatedBuildInputs = [ angles diagnostic-msgs diagnostic-updater easynav-common easynav-core easynav-localizer easynav-sensors eigen geographic-msgs geographiclib geometry-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle robot-localization sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Fusion Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
