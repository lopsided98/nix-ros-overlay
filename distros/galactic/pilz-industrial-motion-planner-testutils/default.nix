
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-galactic-pilz-industrial-motion-planner-testutils";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/pilz_industrial_motion_planner_testutils/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "13c6f41e9fdd442b6902f7c75928360ed7ca60052132caa34f518afbf5e3114a";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common tf2-eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen3-cmake-module moveit-core moveit-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
