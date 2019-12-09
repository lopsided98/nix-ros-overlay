
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-transformer, imu-processors, catkin }:
buildRosPackage {
  pname = "ros-melodic-imu-pipeline";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/melodic/imu_pipeline/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "9ee5a8bc23b24ed9fc68e57f0a23a27cee64664c6cddd61e6ce6474d2545c3aa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-transformer imu-processors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''imu_pipeline'';
    license = with lib.licenses; [ bsdOriginal gpl1 ];
  };
}
