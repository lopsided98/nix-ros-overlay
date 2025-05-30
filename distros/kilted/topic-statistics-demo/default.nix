
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils, sensor-msgs, statistics-msgs }:
buildRosPackage {
  pname = "ros-kilted-topic-statistics-demo";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/topic_statistics_demo/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "7c7fdc7c5a0b587904d45003bd5c4a894b3c704a459056b27f85ef8aaf85f3b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils sensor-msgs statistics-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ demo application for topic statistics feature.";
    license = with lib.licenses; [ asl20 ];
  };
}
