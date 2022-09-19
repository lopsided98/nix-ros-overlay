
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-humble-velodyne-simulator";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/humble/velodyne_simulator/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "653d5cb080147a09953594972faa15e8e6e9ac47359a4348f579aaabcc95542b";
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
