
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hokuyo3d";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/at-wat/hokuyo3d-release/archive/release/kinetic/hokuyo3d/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "0f80bbea913053d898a32926c20df0f24547b10bb843e59b184715cc50168409";
  };

  buildType = "catkin";
  buildInputs = [ roslint rostest ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver node for HOKUYO 3D LIDARs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
