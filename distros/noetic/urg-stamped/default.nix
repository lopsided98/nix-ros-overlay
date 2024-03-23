
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-urg-stamped";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/noetic/urg_stamped/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "457bd32788d830b1d0164f553786191767cc149b06fec8827b956cc9d6a936d2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Precisely stamped URG driver for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}
