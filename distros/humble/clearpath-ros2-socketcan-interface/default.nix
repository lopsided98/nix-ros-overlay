
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-clearpath-ros2-socketcan-interface";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/humble/clearpath_ros2_socketcan_interface/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "8b641f43251021a58af334f3bec0ec87f78a4a67cbd7c3337a68c8e6c2cbb1f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 socketcan interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
