
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-common, easynav-core, easynav-localizer, easynav-sensors, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pcl, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-navmap-localizer";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_navmap_localizer/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "fee404fd03d54c659ba64fc43c558215b6105028215de4653a0e1643d05dcd53";
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
