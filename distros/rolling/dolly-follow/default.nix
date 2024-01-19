
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-dolly-follow";
  version = "0.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly_follow/0.4.0-4.tar.gz";
    name = "0.4.0-4.tar.gz";
    sha256 = "2013d59c6127562a449ced53351f15359af688f96f775ced418878d4fc84b625";
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
