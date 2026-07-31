
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, diagnostic-msgs, diagnostic-updater, easynav-common, easynav-core, easynav-localizer, easynav-sensors, eigen, geographiclib, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, robot-localization, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-lyrical-easynav-fusion-localizer";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_fusion_localizer/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "10630021fd98a5f65814ab7477701b756021c9f7df419a55b8721a184a136f89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common robot-localization ];
  propagatedBuildInputs = [ angles diagnostic-msgs diagnostic-updater easynav-common easynav-core easynav-localizer easynav-sensors eigen geographiclib geometry-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle robot-localization sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Fusion Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
