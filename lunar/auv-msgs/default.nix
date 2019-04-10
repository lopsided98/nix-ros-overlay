
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-auv-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/oceansystemslab/auv_msgs-release/archive/release/lunar/auv_msgs/0.1.0-0.tar.gz;
    sha256 = "94ab1a11a70d679012de53bd67f97bcb1e69e188c54dce97cf3fb3e04728a43b";
  };

  buildInputs = [ geographic-msgs message-generation std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ geographic-msgs message-runtime std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides message types commonly used with Autonomous Underwater Vehicles'';
    #license = lib.licenses.BSD;
  };
}
