
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-raspimouse";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/rolling/raspimouse/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "a940dd6b38f0f4b28e6f7ae711deb6796fd3ce14fab431ee93db40c0a77e0f32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav-msgs raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RaspiMouse ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
