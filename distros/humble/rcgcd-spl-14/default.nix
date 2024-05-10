
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rcgcd-spl-14";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/rcgcd_spl_14/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "abf161f153e6d21d881299a1b68103796e185ce91cba425c0b57f2df551d699d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup SPL GameController Data V14 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
