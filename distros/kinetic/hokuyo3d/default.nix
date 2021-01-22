
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hokuyo3d";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/hokuyo3d-release/archive/release/kinetic/hokuyo3d/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "6eae8158f42cf3b43a2776237aaf3c515017641ce889cf56839ef3f243966f93";
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
