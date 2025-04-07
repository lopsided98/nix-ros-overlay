
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-velodyne-description";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/jazzy/velodyne_description/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "54ba661f653172f5182ae560f4a298ca735851fde4c9c030196efb3cb1497a4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and meshes describing Velodyne laser scanners.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
