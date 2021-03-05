
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, geometry-msgs, nav-msgs, roscpp, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-fetch-teleop";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_teleop/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "56e5095105103697e77fc71e05938a115349f0f4596974f749c6252ba5052164";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs geometry-msgs nav-msgs roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleoperation for fetch and freight.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
