
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, nav2-bringup, nav2-simple-commander, slam-toolbox }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-navigation";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_navigation/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "48e91cd72555d9c49e59596d75757861cc99bef05a2be183a1c32a0303236334";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup nav2-simple-commander slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Turtlebot4 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
