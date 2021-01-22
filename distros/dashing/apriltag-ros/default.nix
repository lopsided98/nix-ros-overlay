
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, apriltag, apriltag-msgs, cv-bridge, eigen, image-transport, rclcpp, rclcpp-components, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-dashing-apriltag-ros";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/christianrauch/apriltag_ros-release/archive/release/dashing/apriltag_ros/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "78c7395721ac210590e60b0ebb88e99cbee180d2b757259b65c5ab02ae3ebce5";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ apriltag apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AprilTag detection node'';
    license = with lib.licenses; [ mit ];
  };
}
