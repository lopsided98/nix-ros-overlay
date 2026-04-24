
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, robot-localization }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-localization";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_localization/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "afe5df339e83cc6d858375e92eade6999f0c4c01f08a6c3b07f2ad3080820599";
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
