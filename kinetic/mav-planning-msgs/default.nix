
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, mav-msgs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mav-planning-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/mav_comm-release/archive/release/kinetic/mav_planning_msgs/3.3.2-0.tar.gz;
    sha256 = "0be1e464a2fc2262dda8d494da76e5948db980b6ea74d72ca72cafdfe8ae2e1d";
  };

  buildInputs = [ cmake-modules mav-msgs trajectory-msgs sensor-msgs message-generation message-runtime eigen std-msgs geometry-msgs ];
  propagatedBuildInputs = [ cmake-modules mav-msgs trajectory-msgs sensor-msgs message-generation message-runtime eigen std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to MAV planning, especially polynomial planning.'';
    license = with lib.licenses; [ "ASL 2.0" ];
  };
}
