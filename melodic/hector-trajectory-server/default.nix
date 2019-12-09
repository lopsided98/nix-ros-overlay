
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-nav-msgs, tf, catkin, roscpp, hector-map-tools, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-trajectory-server";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_trajectory_server/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "39aca0f4b342351570b3940a8570985e9be7ca0a11b5ebd081d8a05cd7ac112b";
  };

  buildType = "catkin";
  buildInputs = [ hector-nav-msgs tf roscpp hector-map-tools nav-msgs ];
  propagatedBuildInputs = [ hector-nav-msgs tf roscpp hector-map-tools nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_trajectory_server keeps track of tf trajectories extracted from tf data and makes this data accessible via a service and topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
