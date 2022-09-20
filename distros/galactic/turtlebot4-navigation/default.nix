
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, nav2-bringup, nav2-simple-commander, slam-toolbox }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-navigation";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_navigation/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "47647d1599758b99e7a0f521a32212b76246c94a9a5824824d5dbae317a402f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup nav2-simple-commander slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Turtlebot4 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
