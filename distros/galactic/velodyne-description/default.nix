
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-galactic-velodyne-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/galactic/velodyne_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "a9e8e0c59271c938648c67468aa4a9367311f9bd565d7955f0e3c4a445e99e43";
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
