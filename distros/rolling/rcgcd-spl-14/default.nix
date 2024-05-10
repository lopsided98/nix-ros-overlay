
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rcgcd-spl-14";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/rolling/rcgcd_spl_14/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "24df7480ab24c69a16a220dcb844d3b505eda274655ae933bc5d4a7abdfbf0bf";
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
