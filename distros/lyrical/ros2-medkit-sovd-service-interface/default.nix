
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nlohmann_json, rclcpp, ros2-medkit-cmake, ros2-medkit-gateway, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-sovd-service-interface";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_sovd_service_interface/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "2abe1fbd7e3454b403b5a4cd71f03ae073c68c82a1d8450c46b58f9be26b785b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nlohmann_json rclcpp ros2-medkit-gateway ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "SOVD Service Interface plugin - exposes medkit entity tree and fault data via ROS 2 services";
    license = with lib.licenses; [ asl20 ];
  };
}
