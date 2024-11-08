
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-description";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_description-release/archive/release/rolling/ur_description/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "f6a529bf37e9b0ad1a3252d94b440a8297c427fa1011c7230eee903738c51245";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF description for Universal Robots";
    license = with lib.licenses; [ bsd3 "Universal-Robots-A-S’-Terms-and-Conditions-for-Use-of-Graphical-Documentation" ];
  };
}
