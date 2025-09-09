
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, iproute2, rclcpp }:
buildRosPackage {
  pname = "ros-humble-clearpath-ros2-socketcan-interface";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/humble/clearpath_ros2_socketcan_interface/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "a022d8fcb5372529a2184dfd5785bc4f65966c95c907bd0ad57966aafba64362";
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
