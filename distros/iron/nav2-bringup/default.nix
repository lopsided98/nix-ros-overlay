
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, nav2-common, navigation2, slam-toolbox, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-iron-nav2-bringup";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_bringup/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "9f4476b1be269caf56ff78673a62ede11fbeb9e9a9292601c7471e360f2f2aca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros nav2-common navigation2 slam-toolbox turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
