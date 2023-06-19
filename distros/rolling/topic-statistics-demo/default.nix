
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils, sensor-msgs, statistics-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-statistics-demo";
  version = "0.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_statistics_demo/0.30.0-1.tar.gz";
    name = "0.30.0-1.tar.gz";
    sha256 = "3f2f3454472e404501a5c7539c9495bb7696fcc2b26d8645f03e138f82c3a5c5";
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
