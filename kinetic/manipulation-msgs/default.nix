
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, household-objects-database-msgs, geometry-msgs, std-msgs, catkin, shape-msgs, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-manipulation-msgs";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/manipulation_msgs-release/archive/release/kinetic/manipulation_msgs/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "683485c3defaa7d347495dbb354af782651a08b3d8ec46454ece6238cfc2d769";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs household-objects-database-msgs geometry-msgs std-msgs shape-msgs actionlib-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs household-objects-database-msgs geometry-msgs message-runtime std-msgs shape-msgs actionlib-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulation_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
