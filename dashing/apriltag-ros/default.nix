
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp-components, ament-cmake, image-transport, eigen, cv-bridge, tf2-msgs, apriltag, rclcpp, apriltag-msgs }:
buildRosPackage {
  pname = "ros-dashing-apriltag-ros";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/christianrauch/apriltag_ros-release/archive/release/dashing/apriltag_ros/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "78c7395721ac210590e60b0ebb88e99cbee180d2b757259b65c5ab02ae3ebce5";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components image-transport eigen cv-bridge tf2-msgs apriltag rclcpp apriltag-msgs ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components image-transport cv-bridge tf2-msgs apriltag rclcpp apriltag-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AprilTag detection node'';
    license = with lib.licenses; [ mit ];
  };
}
