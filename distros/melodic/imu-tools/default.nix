
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-melodic-imu-tools";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/imu_tools/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "baf641b93e413076f3d7400da14630442a225ebb16c5f20c9a117f7b415f4784";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ "BSD-&-GPL" ];
  };
}
