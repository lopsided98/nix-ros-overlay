
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-iron-ur-description";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_description-release/archive/release/iron/ur_description/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "b31b9dfe864c81ecdf3745d5484ffc4b3756b80b392e1681c72777a87fe7fefe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF description for Universal Robots'';
    license = with lib.licenses; [ bsd3 "Universal-Robots-A-S’-Terms-and-Conditions-for-Use-of-Graphical-Documentation" ];
  };
}
