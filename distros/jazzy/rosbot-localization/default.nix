
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, robot-localization }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-localization";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_localization/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "623121880e271161f5dd89f107748e758bfe295aea4579f33bf316888e4a1150";
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
