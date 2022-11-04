
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-velodyne-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/foxy/velodyne_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "9b7eac44518cc4e40dcc9d278042bb422f8571d84c0179e086b2438000fadaa9";
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
