
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-bcr-bot";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/blackcoffeerobotics/bcr_bot_ros2-release/archive/release/humble/bcr_bot/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "12f43fcd8b1c96735f53e718d2274f6a6503c695ec185b158b6a7d5aca7bd185";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''bcr_bot'';
    license = with lib.licenses; [ "-C-Black-Coffee-Robotics" ];
  };
}
