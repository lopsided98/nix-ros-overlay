
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils, sensor-msgs, statistics-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-statistics-demo";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_statistics_demo/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "c92228611606e760d90cfe63ce57356c5d3804bbd1725b52a93dff185252881b";
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
