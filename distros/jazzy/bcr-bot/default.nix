
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, launch, launch-ros, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-bcr-bot";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/blackcoffeerobotics/bcr_bot_ros2-release/archive/release/jazzy/bcr_bot/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "c56073bbd024ecfef40fd4bfbae2239e8bf273fb30c004aa826cb7f94344ee31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "bcr_bot";
    license = with lib.licenses; [ asl20 ];
  };
}
