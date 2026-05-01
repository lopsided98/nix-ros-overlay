
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, canopen-core, canopen-interfaces, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-canopen-master-driver";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/lyrical/canopen_master_driver/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "3734447dbf1c60bfaf869615bc7df4b1ddb4675fea315ecc0b341bff8e6354b3";
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
