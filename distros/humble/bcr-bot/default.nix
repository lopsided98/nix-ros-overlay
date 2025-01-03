
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-bcr-bot";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/blackcoffeerobotics/bcr_bot_ros2-release/archive/release/humble/bcr_bot/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "84349e06b20224029ef2f3ef9f0a4fcaf323650349e71fd759ce887d116a045b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "bcr_bot";
    license = with lib.licenses; [ asl20 ];
  };
}
