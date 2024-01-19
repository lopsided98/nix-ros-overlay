
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-iron-velodyne-simulator";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/iron/velodyne_simulator/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "b1d0edfdf94f5fe42d13f74ec5d4d04964f7b9f3e54fe0d36e0ad7f4b40b6490";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
