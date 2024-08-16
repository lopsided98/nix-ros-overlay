
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ur-description";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_description-release/archive/release/jazzy/ur_description/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "bdd188966f763d90a67f713e7257be5b87a2c99648a5ea9273e6d0d47cd08bb1";
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
