
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-noetic-imu-tools";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/noetic/imu_tools/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "b6f96e7da9d7949ca0a7f75645185f037192ef4d3f983a52fc2db75ed0131e40";
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
