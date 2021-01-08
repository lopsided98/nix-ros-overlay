
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-mechanism-controllers, python-orocos-kdl, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-imu-monitor";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/imu_monitor/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "12ea5bcaec3b7ae9d374995f5a024ea54343c912bead97cc49e2564efc105d06";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs pr2-mechanism-controllers python-orocos-kdl rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a single node that monitors the drift of the IMU
gyroscopes. The results are published to the '/diagnostics' topic and
are aggregated in the PR2 dashboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
