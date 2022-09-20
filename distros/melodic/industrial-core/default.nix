
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-deprecated, industrial-msgs, industrial-robot-client, industrial-robot-simulator, industrial-trajectory-filters, industrial-utils, simple-message }:
buildRosPackage {
  pname = "ros-melodic-industrial-core";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_core/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "b37cab9d1669956c8a3d7314314cb3b54e0e4b1a4ac9a231416e89f5b1bfa266";
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
