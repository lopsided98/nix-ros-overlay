
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-warehouse-ros";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros-release/archive/release/lyrical/warehouse_ros/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "d41ac443a4ea0f8fc1504fe4d73febd8ac6c1099f7abdeb3ac2b6a4b6f312b7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-lint-auto ];
  propagatedBuildInputs = [ boost geometry-msgs openssl pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Persistent storage of ROS messages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
