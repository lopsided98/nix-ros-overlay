
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, gz-ros2-control, joint-state-publisher-gui, launch, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-crane-plus-description";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/jazzy/crane_plus_description/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "e6387d89fb7465c5a9b0c77dfcff118e8641de933751f62fd68718e885a5b3ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-ros2-control joint-state-publisher-gui launch robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "CRANE+ V2 description package";
    license = with lib.licenses; [ asl20 ];
  };
}
