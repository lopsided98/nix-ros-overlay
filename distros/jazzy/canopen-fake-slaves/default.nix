
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-canopen-fake-slaves";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_fake_slaves/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "07de3440787dbc65617be9edfeafe679baa275a9d7b559bcabb0cbda00800a5b";
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
