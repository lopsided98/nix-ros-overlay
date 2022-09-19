
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-humble-velodyne";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/humble/velodyne/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "e30613ff99d96ec03c47047920fda2473a0b73e8ebcb805a005584b09fa30956";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ velodyne-driver velodyne-laserscan velodyne-msgs velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
