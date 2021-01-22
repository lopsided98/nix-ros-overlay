
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-trajectory-server";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_trajectory_server/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "a20848163a5e938922f81393692d51bb726f5d8a454f00d3c394838fc6651b3f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-tools hector-nav-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_trajectory_server keeps track of tf trajectories extracted from tf data and makes this data accessible via a service and topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
