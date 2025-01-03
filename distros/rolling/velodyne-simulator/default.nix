
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-rolling-velodyne-simulator";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/rolling/velodyne_simulator/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "29b3ff619e4c7abe562bdb91bb29f03cb8451bca04144642511ebcdb102f1384";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage allowing easy installation of Velodyne simulation components.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
