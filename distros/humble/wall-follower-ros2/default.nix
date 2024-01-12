
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-wall-follower-ros2";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wall_follower_ros2-release/archive/release/humble/wall_follower_ros2/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "7b88f39913cbca9f5ce5364fb7a9fe2ce9b6c4f870c1f0edd3672a7b06074c65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''wall_follower_ros2 package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
