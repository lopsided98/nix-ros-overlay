
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-trajectory-server";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_trajectory_server/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "f7babbe07541363e5593fd7e7145b8c7be41e224f25242e11e462d7222901f44";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-map-tools hector-nav-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_trajectory_server keeps track of tf trajectories extracted from tf data and makes this data accessible via a service and topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
