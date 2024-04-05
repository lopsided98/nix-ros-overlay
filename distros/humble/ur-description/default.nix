
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-description";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_description-release/archive/release/humble/ur_description/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "efb70b1a9b68dafaa2714e8c91db6d7c82b4b949fce27be2a26a653f362f183e";
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
