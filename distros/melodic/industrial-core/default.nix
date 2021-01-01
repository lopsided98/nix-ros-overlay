
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-deprecated, industrial-msgs, industrial-robot-client, industrial-robot-simulator, industrial-trajectory-filters, industrial-utils, simple-message }:
buildRosPackage {
  pname = "ros-melodic-industrial-core";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_core/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "db3b52e778e5cdc9a97854a82b142a6322dd38cb34fce0d57eb16ce208fb4f07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ industrial-deprecated industrial-msgs industrial-robot-client industrial-robot-simulator industrial-trajectory-filters industrial-utils simple-message ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial core stack contains packages and libraries for supporing industrial systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
