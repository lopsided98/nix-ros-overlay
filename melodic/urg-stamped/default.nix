
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-urg-stamped";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/seqsense/urg_stamped-release/archive/release/melodic/urg_stamped/0.0.2-0.tar.gz;
    sha256 = "61fcca882388f29606ea22d0017c5e19cec9c4edb2b970816693598b38609678";
  };

  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ sensor-msgs roscpp catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    #license = lib.licenses.Apache 2.0;
  };
}
