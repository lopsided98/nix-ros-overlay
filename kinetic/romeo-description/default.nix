
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, message-filters, urdf, robot-state-publisher, roscpp, xacro }:
buildRosPackage {
  pname = "ros-kinetic-romeo-description";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/romeo_description/0.1.5-0.tar.gz;
    sha256 = "0bdfd0b3e21fbc88572fc35d8918e1db00d01930df987f118efec96c63ff4ee0";
  };

  propagatedBuildInputs = [ urdf robot-state-publisher tf sensor-msgs roscpp message-filters xacro ];
  nativeBuildInputs = [ catkin urdf tf sensor-msgs roscpp message-filters xacro ];

  meta = {
    description = ''The romeo_description package'';
    #license = lib.licenses.BSD;
  };
}
