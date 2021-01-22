
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-imu-tools";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_imu_tools/0.3.5-0.tar.gz";
    name = "0.3.5-0.tar.gz";
    sha256 = "67037b2346efc376674ddf7d4a4e7aa8d92353544c485facf61d272ef4900337";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_imu_tools provides some tools for processing IMU messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
