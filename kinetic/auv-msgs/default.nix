
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, catkin, geographic-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-auv-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/oceansystemslab/auv_msgs-release/archive/release/kinetic/auv_msgs/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "2e110447ae64991a7e8488fd076f2ff5bb7d32e426152d233ba77420041fa619";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs geographic-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs geographic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides message types commonly used with Autonomous Underwater Vehicles'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
