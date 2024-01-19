
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-mechanism-controllers, python3Packages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imu-monitor";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/imu_monitor/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "af19afccafb7bc0c0517427a39b495828e0c9dc8df3dcf6661768030a53b4cc3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-mechanism-controllers python3Packages.pykdl rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a single node that monitors the drift of the IMU
gyroscopes. The results are published to the '/diagnostics' topic and
are aggregated in the PR2 dashboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
