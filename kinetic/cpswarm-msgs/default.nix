
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, swarmros }:
buildRosPackage {
  pname = "ros-kinetic-cpswarm-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/cpswarm_msgs-release/archive/release/kinetic/cpswarm_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c8e0320357d7ffc4c72eefcfab586308d90df226473b3b7cf7139ee163aea39a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs swarmros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages required by the CPSwarm Behavior Library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
