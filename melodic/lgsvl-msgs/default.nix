
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-lgsvl-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/lgsvl/lgsvl_msgs-release/archive/release/melodic/lgsvl_msgs/0.0.1-0.tar.gz;
    sha256 = "2269c8659cbed4f904a98824cb128ee15b954efeb3b47bdb0152a61e2e69eba6";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lgsvl_msgs package for ground truth data.'';
    #license = lib.licenses.BSD;
  };
}
