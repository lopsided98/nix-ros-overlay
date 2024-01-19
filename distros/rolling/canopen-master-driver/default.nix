
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, canopen-core, canopen-interfaces, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-canopen-master-driver";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_master_driver/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "83b61c35828207de3abeef364762050d36b868b0ff23e24edc623183e4233367";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ canopen-core canopen-interfaces lely-core-libraries rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Basic canopen master implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
