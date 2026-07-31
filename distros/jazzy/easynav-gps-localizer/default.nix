
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, geographic-msgs, geographiclib, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-gps-localizer";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_gps_localizer/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "aacbb488da5ff8c3471ef60fb90bbcfdc460fe938ab44f63bf7b7dc0b759ce52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core geographic-msgs geographiclib geometry-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: GPS Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
