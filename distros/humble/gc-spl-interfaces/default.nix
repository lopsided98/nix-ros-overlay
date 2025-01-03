
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-gc-spl-interfaces";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/gc_spl_interfaces/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "07e432ed73bb9d52460865c944a558d38acc76e3160e7b9558871337d6f61afd";
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
