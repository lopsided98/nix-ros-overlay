
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, roscpp }:
buildRosPackage {
  pname = "ros-lunar-hokuyo3d";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/at-wat/hokuyo3d-release/archive/release/lunar/hokuyo3d/0.2.0-0.tar.gz;
    sha256 = "c4bc0f73eddd2d5c711785409d99e3097fa19fd1acfa8bd175a6897c28949d07";
  };

  buildInputs = [ rostest sensor-msgs roscpp roslint ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver node for HOKUYO 3D LIDARs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
