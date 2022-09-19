
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-urdf-tutorial";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/humble/urdf_tutorial/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "fe14125ca9decf3111e771750242b1fc0bb7a7b51adff32896bce34a4258b2b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
