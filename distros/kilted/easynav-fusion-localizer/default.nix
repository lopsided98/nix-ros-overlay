
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, easynav-common, easynav-core, easynav-localizer, geographic-msgs, geographiclib, pluginlib, rclcpp, rclcpp-lifecycle, robot-localization, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-easynav-fusion-localizer";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_fusion_localizer/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "27300d892b666ab3199cc7472f6b20fdd96175b201fcada93dbf3cbcd31392f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common robot-localization ];
  propagatedBuildInputs = [ angles easynav-common easynav-core easynav-localizer geographic-msgs geographiclib pluginlib rclcpp rclcpp-lifecycle robot-localization std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Fusion Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
