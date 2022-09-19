
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-velodyne-description";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/humble/velodyne_description/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "ba1f847ecfa9d640cb5890ac0de368cd47f0176d93c8b9d9da7de4983fbc98bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
