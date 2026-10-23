
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-core, easynav-sensors, geometry-msgs, nav-msgs, pcl, pluginlib, rclcpp, rclcpp-lifecycle, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-easynav-vff-controller";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_vff_controller/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "485692791b7fbc58bcd9f5003d498d04a69d213d4a9a2dc0c9a32261f306052b";
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
