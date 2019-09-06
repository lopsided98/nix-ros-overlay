
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, sensor-msgs, catkin, nav-msgs, actionlib, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fetch-teleop";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_teleop/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "522ca0c3b697a586943eb48df1ca8a106b1d0b8d5b3210c4747531cfe9dc3488";
  };

  buildType = "catkin";
  buildInputs = [ control-msgs sensor-msgs nav-msgs actionlib topic-tools roscpp geometry-msgs ];
  propagatedBuildInputs = [ control-msgs sensor-msgs nav-msgs actionlib topic-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleoperation for fetch and freight.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
