
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-components, std-msgs, std-srvs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-trajectory-generation";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_trajectory_generation/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "b0ecb8d25e5ee8edf4c7c522776e738be4108aee6809b84870e0a81b4984feb2";
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
