
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, canopen-core, canopen-interfaces, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-canopen-master-driver";
  version = "0.2.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_master_driver/0.2.12-2.tar.gz";
    name = "0.2.12-2.tar.gz";
    sha256 = "f1af14456b5b4ff330c491013136c4bd890eb7231aca17fb054016f6476581c8";
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
