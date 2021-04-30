
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-urg-stamped";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/kinetic/urg_stamped/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "53868b9bb2f65b74538888da88bce813c9e8e2b6019c3e3daf039ad4c1efd669";
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
