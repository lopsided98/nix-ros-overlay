
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, nlohmann_json, rclcpp, ros2-medkit-beacon-common, ros2-medkit-cmake, ros2-medkit-gateway, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-topic-beacon";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_topic_beacon/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "7dd9e4bcde167af11dde05eb55b169c0953a511ca5062abd9484f4e57ce565f2";
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
