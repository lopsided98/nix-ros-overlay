
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, geometry-msgs, nav-msgs, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-vff-controller";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_vff_controller/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "2f991f0cf4214b143e2813bcbe696863fd523481fa8c25e03c0cab6972ae0b05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors geometry-msgs nav-msgs pcl-ros pluginlib rclcpp rclcpp-lifecycle visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: VFF Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
