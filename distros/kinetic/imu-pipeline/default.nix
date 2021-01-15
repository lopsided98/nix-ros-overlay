
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-kinetic-imu-pipeline";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_pipeline/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "f645728a8a9b9ae07c90f61861c29f477a85a66046a3afd0369c33e683adabf6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-processors imu-transformer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''imu_pipeline'';
    license = with lib.licenses; [ bsdOriginal gpl1 ];
  };
}
