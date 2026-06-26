
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, nlohmann_json, rclcpp, ros2-medkit-beacon-common, ros2-medkit-cmake, ros2-medkit-gateway, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-topic-beacon";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_topic_beacon/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a78832a95641920aa8a17f957a2bb4600012cc164969cd5ed1281404c0833f26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs nlohmann_json rclcpp ros2-medkit-beacon-common ros2-medkit-gateway ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Topic-based beacon discovery plugin for ros2_medkit gateway";
    license = with lib.licenses; [ asl20 ];
  };
}
