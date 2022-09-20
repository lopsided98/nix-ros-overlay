
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-foxy-velodyne-simulator";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/foxy/velodyne_simulator/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "5a795530db06dd6f71d4cf29019e8051efc275eb67b6ea6e540e5abd88f6052a";
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
