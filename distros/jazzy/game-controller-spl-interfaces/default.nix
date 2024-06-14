
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-game-controller-spl-interfaces";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/game_controller_spl_interfaces/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "59d16e74682b073df59acaf970093b16c153de77e55169b3f5c96722b6851339";
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
