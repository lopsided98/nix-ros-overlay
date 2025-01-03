
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rcgcrd-spl-4";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/rcgcrd_spl_4/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "64ae1b12e0ce14d64c0aa23774f67ae218ba8d8f04c80c4b81784fd423e55123";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup SPL GameController Return Data V4 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
