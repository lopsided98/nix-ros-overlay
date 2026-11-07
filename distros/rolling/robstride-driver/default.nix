
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-robstride-driver";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/rolling/robstride_driver/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "10421653c50f40bc66341a8b2c5b66805e8847c4e067c7dbf927670af45c1aba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RobStride private-CAN protocol, topic transport, motor lifecycle, and feedback library.";
    license = with lib.licenses; [ mit ];
  };
}
