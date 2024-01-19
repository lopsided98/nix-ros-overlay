
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, soccer-object-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-marker-generation";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_visualization-release/archive/release/rolling/soccer_marker_generation/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "2518d956c1af9b5a59e91fa7e5f1114dbc8e7fb50aee1670743dbcea8df0ce2d";
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
