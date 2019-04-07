
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-urg-stamped";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/seqsense/urg_stamped-release/archive/release/kinetic/urg_stamped/0.0.2-0.tar.gz;
    sha256 = "2f73177722a8467961a1a1990a1aadaaac601c41e1c1f681a5dcbe61b920b74e";
  };

  buildInputs = [ sensor-msgs roscpp ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    #license = lib.licenses.Apache 2.0;
  };
}
