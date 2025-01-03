
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dolly-follow";
  version = "0.4.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/jazzy/dolly_follow/0.4.0-6.tar.gz";
    name = "0.4.0-6.tar.gz";
    sha256 = "ca28abc855998140fd38a7d9fdd3880359c4f90e83179d8eaf51cc30db127624";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Follow node for Dolly, the robot sheep.";
    license = with lib.licenses; [ asl20 ];
  };
}
