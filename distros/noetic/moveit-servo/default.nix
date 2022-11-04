
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, control-toolbox, geometry-msgs, joy-teleop, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, rosparam-shortcuts, rostest, sensor-msgs, spacenav-node, std-msgs, std-srvs, tf2-eigen, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-servo";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_servo/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "013279fbde762bc01b6fdbc9eec3b2a255d6ce1e5d937d9c59a25f73210c4548";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ control-msgs control-toolbox geometry-msgs joy-teleop moveit-msgs moveit-ros-planning-interface rosparam-shortcuts sensor-msgs spacenav-node std-msgs std-srvs tf2-eigen trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
