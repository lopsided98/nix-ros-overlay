
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, gazebo-ros2-control, ign-ros2-control, joint-state-publisher-gui, launch, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-crane-plus-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "48f76bb303af532f42fd60e6e6439df98014ed40bc94b8d4695d4a6335b0fd91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros2-control ign-ros2-control joint-state-publisher-gui launch robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''CRANE+ V2 description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
