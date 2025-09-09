
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-action, rclcpp-components, tf2, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-swarm-flocking";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_swarm_flocking/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "28790f52daa3bf63a67e3a2debf9ada6de879651210ec3a54b344808a9ddd16c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-ros as2-behavior as2-core as2-motion-reference-handlers as2-msgs eigen geometry-msgs rclcpp rclcpp-action rclcpp-components tf2 tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 behavior swarm flocking";
    license = with lib.licenses; [ bsd3 ];
  };
}
