
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-game-controller-spl-interfaces";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/game_controller_spl_interfaces/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "898ce9278e31cbbe17380c29a8b353b0f9ae9db74d97dada57fa8d9aa73cc8d5";
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
