
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-mechanism-controllers, python-orocos-kdl, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imu-monitor";
  version = "1.6.31-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/imu_monitor/1.6.31-1.tar.gz";
    name = "1.6.31-1.tar.gz";
    sha256 = "7bbe15ef4ee3287381effb583fb31b131fc5989015bb88cd03dbc5435b2bf73e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-mechanism-controllers python-orocos-kdl rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a single node that monitors the drift of the IMU
gyroscopes. The results are published to the '/diagnostics' topic and
are aggregated in the PR2 dashboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
