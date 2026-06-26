
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-lint-auto, ament-lint-common, nlohmann_json, rclcpp, ros2-medkit-beacon-common, ros2-medkit-cmake, ros2-medkit-gateway }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-param-beacon";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_param_beacon/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "f59ed90e1577354dbe76365ae975c2c5a3144ab0ff92ae71de8eaa955b396898";
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
