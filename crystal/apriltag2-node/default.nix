
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, class-loader, ament-cmake, eigen, tf2-msgs, apriltag, rclcpp, apriltag-msgs }:
buildRosPackage {
  pname = "ros-crystal-apriltag2-node";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/christianrauch/apriltag2_node-release/archive/release/crystal/apriltag2_node/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "096c7aba240c1767464228f85390ab0162b0443d470887944047d7b0b9e56f08";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs class-loader eigen tf2-msgs apriltag rclcpp apriltag-msgs ];
  propagatedBuildInputs = [ sensor-msgs class-loader tf2-msgs apriltag rclcpp apriltag-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AprilTag2 detection node'';
    license = with lib.licenses; [ mit ];
  };
}
