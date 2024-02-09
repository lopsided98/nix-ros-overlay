
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-platform";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_platform/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "44dca1f29e6fb5443a56824fc9e9dbe605e6ce80fec3d16ca51ead6b82562325";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-behavior as2-core as2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 core package which contains launchers for the basic behaviors'';
    license = with lib.licenses; [ bsd3 ];
  };
}
