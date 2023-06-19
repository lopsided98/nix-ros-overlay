
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, nav2-bringup, nav2-simple-commander, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-navigation";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_navigation/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "875f7f9a0ce28eed9cc5269abdd234a9db593c0c95eff1afd2b23a81456ec50e";
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
