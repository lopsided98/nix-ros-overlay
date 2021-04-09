
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-urg-stamped";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/kinetic/urg_stamped/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "44db2631d76488767a46c62dadc198f0990c1449cab5a1ace46309675305043e";
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
