
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, household-objects-database-msgs, message-generation, message-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-manipulation-msgs";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/manipulation_msgs-release/archive/release/kinetic/manipulation_msgs/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "683485c3defaa7d347495dbb354af782651a08b3d8ec46454ece6238cfc2d769";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs household-objects-database-msgs message-generation message-runtime sensor-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulation_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
