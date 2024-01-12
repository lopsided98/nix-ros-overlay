
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-dolly-follow";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/iron/dolly_follow/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "5cce724b58d4f5e217a6abdbc63d36a3c6ce8dc9b7a5c139a5b4e5dd0ff25b28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Follow node for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
