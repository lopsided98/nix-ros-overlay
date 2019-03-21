
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, sensor-msgs, catkin, nav-msgs, actionlib, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-teleop";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_teleop/0.8.0-0.tar.gz;
    sha256 = "1e6d65aa8aabe6fe4d77e22c7443c985a76e0092c8513da6192dd330e0862765";
  };

  propagatedBuildInputs = [ nav-msgs control-msgs actionlib topic-tools sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ nav-msgs catkin control-msgs actionlib topic-tools sensor-msgs roscpp geometry-msgs ];

  meta = {
    description = ''Teleoperation for fetch and freight.'';
    #license = lib.licenses.BSD;
  };
}
