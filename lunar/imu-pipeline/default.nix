
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-transformer, imu-processors }:
buildRosPackage {
  pname = "ros-lunar-imu-pipeline";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/imu_pipeline-release/archive/release/lunar/imu_pipeline/0.2.3-0.tar.gz;
    sha256 = "b450ba552f8a9b7345f49ca231a1682ab2b21726e077ddd7fce89f37b070b036";
  };

  propagatedBuildInputs = [ imu-transformer imu-processors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''imu_pipeline'';
    #license = lib.licenses.BSD;
  };
}
