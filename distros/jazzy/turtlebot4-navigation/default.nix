
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, nav2-bringup, nav2-simple-commander, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-navigation";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_navigation/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d25383d9989aaadbb190c061fca03c249731bfa3f0a1401d9557d56a697595c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup nav2-simple-commander slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Turtlebot4 Navigation";
    license = with lib.licenses; [ asl20 ];
  };
}
