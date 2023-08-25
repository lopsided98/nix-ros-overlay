
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, nao-lola-sensor-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-nao-lola-conversion";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola_conversion/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "426a0894b1c140c588e2d5b986450c5851048625c22aa7ff15ca37d567160308";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters nao-lola-sensor-msgs rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package that converts Nao Lola messages to / from common ROS interfaces'';
    license = with lib.licenses; [ asl20 ];
  };
}
