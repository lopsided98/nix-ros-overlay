
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-velodyne-description";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/rolling/velodyne_description/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "18df0d4a993fd8cd39c8c414176ea83c5b7cbcdaf7cb86c07cf3bef4b10ec8af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
