
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, object-recognition-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-household-objects-database-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/household_objects_database_msgs-release/archive/release/kinetic/household_objects_database_msgs/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "e1ca12a7e691e83a055f770f6a27f645512a959b18e8c66539e482520529aee7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime object-recognition-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The household_objects_database_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
