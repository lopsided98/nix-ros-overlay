
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, geographic-msgs, geographiclib, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-easynav-gps-localizer";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_gps_localizer/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "25526ad41f67164116e5b8a22fbd6b368272fa54aff75187bb23870be58ce690";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core geographic-msgs geographiclib pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: GPS Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
