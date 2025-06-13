
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-core, canopen-interfaces, diagnostic-updater, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-canopen-base-driver";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_base_driver/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "085dfcac32f52cfc5208e550d416fbbd6126e5f70b70b9aae32fb7a99bc644e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-core canopen-interfaces diagnostic-updater lely-core-libraries rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Library containing abstract CANopen driver class for ros2_canopen";
    license = with lib.licenses; [ asl20 ];
  };
}
