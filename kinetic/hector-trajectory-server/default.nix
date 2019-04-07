
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, roscpp, hector-nav-msgs, nav-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-trajectory-server";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_trajectory_server/0.3.5-0.tar.gz;
    sha256 = "40fb3551ed7f6a9d88e58d08a504962274d439e05515f05ce7a69aebe43ef3c9";
  };

  buildInputs = [ nav-msgs tf roscpp hector-map-tools hector-nav-msgs ];
  propagatedBuildInputs = [ nav-msgs tf roscpp hector-map-tools hector-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_trajectory_server keeps track of tf trajectories extracted from tf data and makes this data accessible via a service and topic.'';
    #license = lib.licenses.BSD;
  };
}
