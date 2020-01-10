
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-auv-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/oceansystemslab/auv_msgs-release/archive/release/kinetic/auv_msgs/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "2e110447ae64991a7e8488fd076f2ff5bb7d32e426152d233ba77420041fa619";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides message types commonly used with Autonomous Underwater Vehicles'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
