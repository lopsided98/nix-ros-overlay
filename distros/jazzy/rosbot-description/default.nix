
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, husarion-components-description, joint-state-publisher, launch, launch-ros, open-manipulator-description, python3Packages, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-description";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_description/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "5af4b0e519305cb807ebf6a2799954ce6a5b1e448a5b312a988ae5796f9120c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest xacro ];
  propagatedBuildInputs = [ husarion-components-description joint-state-publisher launch launch-ros open-manipulator-description robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rosbot_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
