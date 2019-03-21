
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lgsvl-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/lgsvl/lgsvl_msgs-release/archive/release/kinetic/lgsvl_msgs/0.0.1-0.tar.gz;
    sha256 = "f46ae4bd92dcb6c432f1f23cc583adf3febfe04f478a15e63b790c003e9c4aa5";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ message-generation std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''The lgsvl_msgs package for ground truth data.'';
    #license = lib.licenses.BSD;
  };
}
