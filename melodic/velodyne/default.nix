
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-laserscan, velodyne-driver, catkin, velodyne-pointcloud, velodyne-msgs }:
buildRosPackage {
  pname = "ros-melodic-velodyne";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/melodic/velodyne/1.5.2-0.tar.gz;
    sha256 = "31d4489ac69e37ba7a4d928e66b9d25af331252dca9ebdd9a3be6a2a0c52dde9";
  };

  propagatedBuildInputs = [ velodyne-driver velodyne-pointcloud velodyne-laserscan velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
