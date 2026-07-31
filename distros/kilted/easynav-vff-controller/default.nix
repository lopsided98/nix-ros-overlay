
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, geometry-msgs, nav-msgs, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-vff-controller";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_vff_controller/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "675ddc535a5c2d7a75c10facdc9cf605c9f112bdc4bcc905186c78d80d41db61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors geometry-msgs nav-msgs pcl-ros pluginlib rclcpp rclcpp-lifecycle tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: VFF Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
