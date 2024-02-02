
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-game-controller-spl-interfaces";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/game_controller_spl_interfaces/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "9d55de436362c761d408f0e24607bc2fabbf14793a60ced269c6ff42151f1733";
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
