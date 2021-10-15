
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-velodyne-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/foxy/velodyne_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4b7559bf190462d753547aceb48555ee90913dec126fc06dc11e639cba738c76";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
