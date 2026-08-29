
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-robstride-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/humble/robstride_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "80e2943c8367d888a57373257688993e2b247af52d3a0e070979ee173f8f4c65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RobStride private-CAN protocol, topic transport, motor lifecycle, and feedback library.";
    license = with lib.licenses; [ mit ];
  };
}
