
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, robot-localization }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-localization";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_localization/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "674f578fff3b9b54090b5002b44fea86f2b60546a72980e2e24aae4c9ed66212";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros robot-localization ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rosbot_localization package";
    license = with lib.licenses; [ asl20 ];
  };
}
