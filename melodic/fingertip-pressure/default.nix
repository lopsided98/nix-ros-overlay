
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs, pr2-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fingertip-pressure";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/fingertip_pressure/1.8.18-0.tar.gz;
    sha256 = "b4ed5a369a34c342f410d4fbfb050d286cb4ff8db96482684e0e6354c66e5ac5";
  };

  propagatedBuildInputs = [ message-runtime rospy std-msgs pr2-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ rostest message-generation std-msgs catkin geometry-msgs ];

  meta = {
    description = ''This package provides access to the PR2 fingertip pressure sensors. This information includes:'';
    #license = lib.licenses.BSD;
  };
}
