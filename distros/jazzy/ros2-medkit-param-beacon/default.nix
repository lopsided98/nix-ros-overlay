
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-lint-auto, ament-lint-common, nlohmann_json, rclcpp, ros2-medkit-beacon-common, ros2-medkit-cmake, ros2-medkit-gateway }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-param-beacon";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_param_beacon/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "9d9327eaabf5c64584bdbfb0e5d1fad7910847dac0de508af469ba8a7fd13ad6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nlohmann_json rclcpp ros2-medkit-beacon-common ros2-medkit-gateway ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Parameter-based beacon discovery plugin for ros2_medkit gateway";
    license = with lib.licenses; [ asl20 ];
  };
}
