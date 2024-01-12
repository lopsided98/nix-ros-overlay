
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-core, canopen-interfaces, diagnostic-updater, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-canopen-base-driver";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_base_driver/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "823bc19c041729b863ed2478ea2828728945d7f6eebfdb7b0870be3b8d545732";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-core canopen-interfaces diagnostic-updater lely-core-libraries rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Library containing abstract CANopen driver class for ros2_canopen'';
    license = with lib.licenses; [ asl20 ];
  };
}
