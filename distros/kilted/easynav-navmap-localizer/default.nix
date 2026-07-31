
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-common, easynav-core, easynav-localizer, easynav-sensors, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-navmap-localizer";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_navmap_localizer/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "4b20efe8ae7d23a3c72b07245a358d2febe089a7f4ae9654e120281ead1e20ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-bonxai-maps-manager easynav-common easynav-core easynav-localizer easynav-sensors eigen geometry-msgs nav-msgs navmap-core navmap-ros navmap-ros-interfaces pcl-ros pluginlib tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: nAVmAP Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
