
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, canopen-core, canopen-interfaces, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-canopen-master-driver";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_master_driver/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "8fa8bc35ad5236c441de577b0de688dc564a8446433cd74740d19da452e1839c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ canopen-core canopen-interfaces lely-core-libraries rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Basic canopen master implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
