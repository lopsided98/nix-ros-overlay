
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-urg-stamped";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/kinetic/urg_stamped/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "9cf5e6b989ed6b8bd15cde7f3e0ede22beab3f15d6e72c79d529222fa36d7eda";
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
