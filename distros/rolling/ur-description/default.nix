
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-description";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_description-release/archive/release/rolling/ur_description/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "e3d96d26ec90ab2d5d961ddc3b7613f2a5441158a09f1a002b41930015c75d97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF description for Universal Robots'';
    license = with lib.licenses; [ bsd3 ];
  };
}
