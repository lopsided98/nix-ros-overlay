
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-urg-stamped";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/noetic/urg_stamped/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "3dfd5522e271282f93d381ba0c6ca25f104ff51a79253fd1e908685eba57f75d";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
