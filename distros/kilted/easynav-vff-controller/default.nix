
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, nav-msgs, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-vff-controller";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_vff_controller/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "6c4b9806289c0840a669168865f10b1759213b50eeeafc625ba1c9d4ff2553a8";
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
