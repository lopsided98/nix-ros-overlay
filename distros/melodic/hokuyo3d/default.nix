
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-hokuyo3d";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/hokuyo3d-release/archive/release/melodic/hokuyo3d/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "bc85a3df064e76fb26e2d04d8f355ad9dee7a8bc3fdc3de67d10302bcdabb88e";
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
