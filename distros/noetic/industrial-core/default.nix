
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-deprecated, industrial-msgs, industrial-robot-client, industrial-robot-simulator, industrial-trajectory-filters, industrial-utils, simple-message }:
buildRosPackage {
  pname = "ros-noetic-industrial-core";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/noetic/industrial_core/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "60aab3d3952f68fddc9185ae536eda925de829d5d996ee40c5a3c7f84f059979";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ industrial-deprecated industrial-msgs industrial-robot-client industrial-robot-simulator industrial-trajectory-filters industrial-utils simple-message ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial core stack contains packages and libraries for supporing industrial systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
