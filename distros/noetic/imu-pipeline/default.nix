
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-noetic-imu-pipeline";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/noetic/imu_pipeline/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "3a8f6074735f46cdd3d4953a6673b3351e998a88b63b642433429ae4f24560a1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-processors imu-transformer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''imu_pipeline'';
    license = with lib.licenses; [ bsdOriginal "GPL" ];
  };
}
