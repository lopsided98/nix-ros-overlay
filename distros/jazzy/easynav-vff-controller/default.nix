
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-core, easynav-sensors, geometry-msgs, nav-msgs, pcl, pluginlib, rclcpp, rclcpp-lifecycle, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-vff-controller";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_vff_controller/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "11f73cd534d4a8b7cbdafb9c4c7a0276af9890833e8be380c58b16901c8a012e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-controller ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors geometry-msgs nav-msgs pcl pluginlib rclcpp rclcpp-lifecycle tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: VFF Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
