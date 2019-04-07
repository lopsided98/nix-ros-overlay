
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-planner-cspace-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/planner_cspace_msgs/0.3.1-0.tar.gz;
    sha256 = "8dc9117831302c78719153d5a301078e9d9c14f4acf31689516a0164324774fa";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for planner_cspace package'';
    #license = lib.licenses.BSD;
  };
}
