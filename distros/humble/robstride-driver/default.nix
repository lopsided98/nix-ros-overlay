
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-robstride-driver";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/humble/robstride_driver/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "07ec633cc6d3f87a96cb79ba807860ae735d001a4b0f5c9abb39e48baeac25ec";
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
