
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, nav-msgs, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-vff-controller";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_vff_controller/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "3052c75580b5b80e864542e21ef0ef501b78f1cc49a5a74d720d6ce38ba94f38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core nav-msgs pcl-ros pluginlib rclcpp rclcpp-lifecycle visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: VFF Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
