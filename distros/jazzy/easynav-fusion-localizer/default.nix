
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-msgs, diagnostic-updater, easynav-common, easynav-core, easynav-localizer, easynav-sensors, eigen, geographiclib, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, robot-localization, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-jazzy-easynav-fusion-localizer";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_fusion_localizer/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "7f2547a375910c3fe8957cde612978e576e37bb6bc093d551edb2bf70f5dd34c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common robot-localization ];
  propagatedBuildInputs = [ angles diagnostic-msgs diagnostic-updater easynav-common easynav-core easynav-localizer easynav-sensors eigen geographiclib geometry-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle robot-localization sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Fusion Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
