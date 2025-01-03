
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-jazzy-velodyne-simulator";
  version = "2.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/jazzy/velodyne_simulator/2.0.3-4.tar.gz";
    name = "2.0.3-4.tar.gz";
    sha256 = "a74db4f8d72a3fa305a1f233519d2598408bc40559770c643c813c6d0f9f9160";
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
