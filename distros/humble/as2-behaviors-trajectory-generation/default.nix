
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, geometry-msgs, rclcpp, std-msgs, std-srvs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-trajectory-generation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_trajectory_generation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b68bfae76fca8d0c5004fcf8d79da08a71287c293db384fc94e0496413840d8b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-behavior as2-core as2-motion-reference-handlers as2-msgs eigen geometry-msgs rclcpp std-msgs std-srvs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack behaviors colection for trajectory generator'';
    license = with lib.licenses; [ bsd3 ];
  };
}
