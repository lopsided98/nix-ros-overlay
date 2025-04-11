
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, iproute2, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-ros2-socketcan-interface";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/jazzy/clearpath_ros2_socketcan_interface/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "54f19c1ee7c6d9bc1b7f5525873a4b27b225e4026f06131f3b7e3dd490de351b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs iproute2 rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 socketcan interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
