
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-basic";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/RoverRobotics/rr_openrover_basic-release/archive/release/kinetic/rr_openrover_basic/0.6.1-0.tar.gz;
    sha256 = "7de6c6fefa26c462a9db9f3464a3eb4c1d402d44f970fb9cab0ee37f22157250";
  };

  buildInputs = [ nav-msgs message-generation rospy std-msgs sensor-msgs roscpp geometry-msgs tf ];
  propagatedBuildInputs = [ nav-msgs message-runtime rospy std-msgs sensor-msgs tf geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_basic package'';
    #license = lib.licenses.BSD;
  };
}
