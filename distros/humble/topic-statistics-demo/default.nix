
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils, sensor-msgs, statistics-msgs }:
buildRosPackage {
  pname = "ros-humble-topic-statistics-demo";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/topic_statistics_demo/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "6069a572f966f285d7e71e88a5afe3e205c1cdc69a7c30e924c8744d91e7ba4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils sensor-msgs statistics-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ demo application for topic statistics feature.'';
    license = with lib.licenses; [ asl20 ];
  };
}
