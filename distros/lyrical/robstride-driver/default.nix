
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-robstride-driver";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/lyrical/robstride_driver/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "df8d73f7ea13963859931e05afc144c75ef8c14622e13d789dbc8ef299b2a9b1";
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
