
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-imu-tools";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_imu_tools/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c470a8781962710ca68058006428879639b57ce29649d2660ee10a6b09289ff5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_imu_tools provides some tools for processing IMU messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
