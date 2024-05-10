
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rcgcrd-spl-4";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/rolling/rcgcrd_spl_4/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "04ac79407a915442446747ad359863ff6a6f0f5f83acb9137345f4f9b72c8016";
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
