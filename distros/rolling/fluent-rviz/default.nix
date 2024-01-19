
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, geometry-msgs, ouxt-lint-common, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-fluent-rviz";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fluent_rviz-release/archive/release/rolling/fluent_rviz/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "4a8921fe6e1f7e711519475292f7f6403e17110b6481eaaec5fb99841d1673ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A library which makes Rviz fluent. Powered by C++17'';
    license = with lib.licenses; [ asl20 ];
  };
}
