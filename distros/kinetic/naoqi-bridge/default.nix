
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-apps, naoqi-bridge-msgs, naoqi-driver, naoqi-driver-py, naoqi-pose, naoqi-sensors-py, naoqi-tools }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-bridge";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_bridge/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "f491bc954ee6ca0e305ae504adacb58ec901d504cd1790d821f68400619e1aa4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ naoqi-apps naoqi-bridge-msgs naoqi-driver naoqi-driver-py naoqi-pose naoqi-sensors-py naoqi-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package to interface ROS with Aldebaran's NAOqi.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
