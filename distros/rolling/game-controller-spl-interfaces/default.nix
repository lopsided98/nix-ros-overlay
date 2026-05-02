
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-game-controller-spl-interfaces";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/rolling/game_controller_spl_interfaces/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "f814fef774a6103d4ecf20a7d3da8a61f500a3bbf40c1d6348dc373d24559ffc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup SPL GameController Data ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
