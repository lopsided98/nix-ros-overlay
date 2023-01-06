
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, soccer-object-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-marker-generation";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_visualization-release/archive/release/rolling/soccer_marker_generation/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "321771d411d49b84fb5ea75ab1fdfa5fad75d97040bf86b8ac7e7a814be3b2ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp soccer-object-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates rviz display markers from soccer msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
