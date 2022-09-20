
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/trajectory_tracker_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "2086e554a50e2b029b0c610edfdbd0d88ce9cb00fb283309acfc501e60b02ac5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ nav-msgs roscpp roslint rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for trajectory_tracker package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
