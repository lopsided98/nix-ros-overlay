
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-hokuyo3d";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/hokuyo3d-release/archive/release/noetic/hokuyo3d/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "54ea4d34ed4d3913af28037b4bab6eac729a6d9bdac82aac9143c00e4c448855";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint rostest ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver node for HOKUYO 3D LIDARs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
