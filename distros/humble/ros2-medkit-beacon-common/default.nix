
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nlohmann_json, rclcpp, ros2-medkit-cmake, ros2-medkit-gateway, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-beacon-common";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_beacon_common/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "1d8fd3d72aa417c9eaaf94d7341a7fcfbf1920e03b773b8d0782c43c9b03e064";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nlohmann_json rclcpp ros2-medkit-gateway ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Shared library for ros2_medkit beacon discovery plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
