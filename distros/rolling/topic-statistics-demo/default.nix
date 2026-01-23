
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils, sensor-msgs, statistics-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-statistics-demo";
  version = "0.37.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_statistics_demo/0.37.5-1.tar.gz";
    name = "0.37.5-1.tar.gz";
    sha256 = "31dc0d3b8f07622d300c443614d0c1985135ec49332ce7bccc0c2738f61066fe";
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
