
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, nav-msgs, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-easynav-vff-controller";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_vff_controller/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "db86aff4975cb61bced371fab1c7b19ccc520fcc97e78408a4fc1efe73094fae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors nav-msgs pcl-ros pluginlib rclcpp rclcpp-lifecycle tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: VFF Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
