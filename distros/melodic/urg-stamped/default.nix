
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-urg-stamped";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/melodic/urg_stamped/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "17819d6be60366c1c6d586d33658734e8fc008e6b95b1420c9edef5e1e2e2a43";
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
