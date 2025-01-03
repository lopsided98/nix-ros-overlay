
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-components, std-msgs, std-srvs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-trajectory-generation";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_trajectory_generation/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "771ec7f32ce69820137dfa26033e18a0c4678812764d301f28e346955752c734";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-behavior as2-core as2-motion-reference-handlers as2-msgs eigen geometry-msgs rclcpp rclcpp-components std-msgs std-srvs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aerostack behaviors collection for trajectory generation";
    license = with lib.licenses; [ bsd3 ];
  };
}
