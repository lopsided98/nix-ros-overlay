
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-common, easynav-core, easynav-localizer, easynav-sensors, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pcl, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-easynav-navmap-localizer";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_navmap_localizer/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "24aa65f8608878f05bb9bf1ab8dbf787610887c2a15e285949a01f0b92c5d8cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-bonxai-maps-manager easynav-common easynav-core easynav-localizer easynav-sensors eigen geometry-msgs nav-msgs navmap-core navmap-ros navmap-ros-interfaces pcl pluginlib rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: nAVmAP Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
