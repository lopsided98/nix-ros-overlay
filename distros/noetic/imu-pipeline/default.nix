
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-noetic-imu-pipeline";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/noetic/imu_pipeline/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "946eec181c53278eb6e6dd0763beb3e9a654b76f825affe873dcb7afaf509242";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-processors imu-transformer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''imu_pipeline'';
    license = with lib.licenses; [ bsdOriginal gpl1 ];
  };
}
