
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-msgs, geometry-msgs, nav-msgs, rclcpp, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-path-planning";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_path_planning/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "e146d59e9fe4c61a3f91456672874369ca3450c313e67bbaf41e5a57bace88ae";
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
