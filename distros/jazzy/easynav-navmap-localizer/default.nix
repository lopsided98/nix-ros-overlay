
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-common, easynav-core, easynav-localizer, geometry-msgs, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-navmap-localizer";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_navmap_localizer/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "eae7db4a3d14440e562121c45f164b02c0fe28281ebba9e526101a53c54bc49e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-bonxai-maps-manager easynav-common easynav-core easynav-localizer geometry-msgs nav-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: nAVmAP Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
