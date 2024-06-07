
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-velodyne-description";
  version = "2.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/jazzy/velodyne_description/2.0.3-4.tar.gz";
    name = "2.0.3-4.tar.gz";
    sha256 = "def546ec18a95fdbfa0e101469390072898dedc0ef2187cfc394dc73f4e7db42";
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
