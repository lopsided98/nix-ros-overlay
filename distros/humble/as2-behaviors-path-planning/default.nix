
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-msgs, geometry-msgs, nav-msgs, rclcpp, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-path-planning";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_path_planning/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "91e8f60031458b8cca4bfd18f07447135f341dbb9dc57550c6c7f701509ed3a9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-behavior as2-core as2-msgs geometry-msgs nav-msgs rclcpp tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aerostack2 behaviors collection for path planning";
    license = with lib.licenses; [ bsd3 ];
  };
}
