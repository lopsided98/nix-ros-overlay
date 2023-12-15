
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-components, std-msgs, std-srvs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-trajectory-generation";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_trajectory_generation/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "c7d7f5cb093552cdda51e42422906aeca104eea2ef9e734f269f09821d2b66c4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-behavior as2-core as2-motion-reference-handlers as2-msgs eigen geometry-msgs rclcpp rclcpp-components std-msgs std-srvs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack behaviors collection for trajectory generation'';
    license = with lib.licenses; [ bsd3 ];
  };
}
