
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-game-controller-spl-interfaces";
  version = "5.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/lyrical/game_controller_spl_interfaces/5.0.0-4.tar.gz";
    name = "5.0.0-4.tar.gz";
    sha256 = "79b0009cc23a04ddb79aa8dd9cc214af07024e0057d8547338ebefbb9f690876";
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
