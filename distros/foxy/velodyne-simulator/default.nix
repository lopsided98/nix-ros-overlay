
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-foxy-velodyne-simulator";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/foxy/velodyne_simulator/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "63eba5c4ffc36bbff609ef6f73c439801fe532a649ae0a30bdfe7d58c281aab1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
