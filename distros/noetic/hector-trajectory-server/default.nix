
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-trajectory-server";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_trajectory_server/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "44921895097d9e11f05cc3055f6574fab40062b082c9e9db6f4b7d30936b3430";
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
