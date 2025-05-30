
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-canopen-fake-slaves";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_fake_slaves/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "c93afaeb59eddffc2d9497cf000ed7e3147cbbbd5b2c82ccc0c87bd0b6f7fa4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ lely-core-libraries lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package with mock canopen slave";
    license = with lib.licenses; [ asl20 ];
  };
}
