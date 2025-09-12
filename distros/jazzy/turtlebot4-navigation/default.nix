
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, nav2-bringup, nav2-simple-commander, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-navigation";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_navigation/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "a589f6385e08002b7b4917f9681e7eb40a823e56a30f2286697a3fa80ec2fc8b";
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
