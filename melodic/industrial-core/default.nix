
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, industrial-deprecated, industrial-utils, catkin, industrial-robot-client, industrial-msgs, simple-message, industrial-trajectory-filters, industrial-robot-simulator }:
buildRosPackage {
  pname = "ros-melodic-industrial-core";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_core/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "bf63fe4b823d57a1ea8970db34788b07979c6b6ac549c0dcf587bee582f9798b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ industrial-deprecated industrial-utils industrial-robot-client industrial-msgs simple-message industrial-trajectory-filters industrial-robot-simulator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial core stack contains packages and libraries for supporing industrial systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
