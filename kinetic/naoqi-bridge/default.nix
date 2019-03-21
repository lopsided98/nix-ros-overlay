
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-pose, naoqi-bridge-msgs, naoqi-driver-py, naoqi-tools, naoqi-sensors-py, naoqi-driver, naoqi-apps }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-bridge";
  version = "0.5.5";

  src = fetchurl {
    url = https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_bridge/0.5.5-0.tar.gz;
    sha256 = "f491bc954ee6ca0e305ae504adacb58ec901d504cd1790d821f68400619e1aa4";
  };

  propagatedBuildInputs = [ naoqi-driver-py naoqi-tools naoqi-sensors-py naoqi-driver naoqi-apps naoqi-pose naoqi-bridge-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package to interface ROS with Aldebaran's NAOqi.'';
    #license = lib.licenses.BSD;
  };
}
