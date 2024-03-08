
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-canopen-fake-slaves";
  version = "0.2.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_fake_slaves/0.2.8-2.tar.gz";
    name = "0.2.8-2.tar.gz";
    sha256 = "ec64ceef667b682c9d7ee61adf0dca344c366c37bb7aad4a02343b73db28e083";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ lely-core-libraries lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package with mock canopen slave'';
    license = with lib.licenses; [ asl20 ];
  };
}
