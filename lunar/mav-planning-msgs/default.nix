
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, mav-msgs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mav-planning-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/mav_comm-release/archive/release/lunar/mav_planning_msgs/3.3.2-0.tar.gz;
    sha256 = "efb1b9f420d7c7cc47839b18b4f05a5ac3c259616ba8e80997b77cd6cd17ad77";
  };

  buildInputs = [ cmake-modules mav-msgs trajectory-msgs sensor-msgs message-generation message-runtime eigen std-msgs geometry-msgs ];
  propagatedBuildInputs = [ cmake-modules mav-msgs trajectory-msgs sensor-msgs message-generation message-runtime eigen std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to MAV planning, especially polynomial planning.'';
    license = with lib.licenses; [ "ASL 2.0" ];
  };
}
