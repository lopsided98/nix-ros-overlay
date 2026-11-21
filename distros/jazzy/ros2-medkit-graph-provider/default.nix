
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, nlohmann_json, rclcpp, ros2-medkit-cmake, ros2-medkit-gateway }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-graph-provider";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_graph_provider/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "694d4f8ec026142def206fd3a34c3d5e5ae9cc4113a44227058d0bc38b398104";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs nlohmann_json rclcpp ros2-medkit-gateway ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Graph provider plugin for ros2_medkit gateway";
    license = with lib.licenses; [ asl20 ];
  };
}
