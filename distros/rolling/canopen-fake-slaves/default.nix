
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-canopen-fake-slaves";
  version = "0.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_fake_slaves/0.3.2-2.tar.gz";
    name = "0.3.2-2.tar.gz";
    sha256 = "d73dd6ef818611033ee4273abdf2e525e990229d8e0a5247b5f0d1620e696f2d";
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
