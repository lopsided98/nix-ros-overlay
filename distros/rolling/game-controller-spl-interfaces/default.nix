
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-game-controller-spl-interfaces";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/game_controller_spl_interfaces/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "3734728de8b6210d4774e4a2c9779db82ef98582c4c9c95005e7ecd4826cdc32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup SPL GameController Data ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
