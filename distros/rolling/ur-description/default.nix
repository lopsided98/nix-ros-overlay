
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-description";
  version = "4.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_description-release/archive/release/rolling/ur_description/4.4.1-1.tar.gz";
    name = "4.4.1-1.tar.gz";
    sha256 = "5656b665ef068485698a29d6a8172ba5fe883f4a6ca28bc040623965b6b9b8fc";
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
