
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rcutils, sensor-msgs, statistics-msgs }:
buildRosPackage {
  pname = "ros-lyrical-topic-statistics-demo";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/topic_statistics_demo/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "654634904b085c5be55f5e2e72e27e5ceb57209b8787ffa3f42df3d993f497d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rcutils sensor-msgs statistics-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ demo application for topic statistics feature.";
    license = with lib.licenses; [ asl20 ];
  };
}
