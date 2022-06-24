
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, gazebo-ros2-control, ign-ros2-control, joint-state-publisher-gui, launch, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-description";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus_description/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "f7bf068aacdbc11478e87d09e286c19f4547e821944015f1b64c6df1ea832753";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros2-control ign-ros2-control joint-state-publisher-gui launch robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''CRANE+V2 description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
