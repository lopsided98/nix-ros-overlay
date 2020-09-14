
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, geometry-msgs, joy-teleop, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, rosparam-shortcuts, rostest, sensor-msgs, spacenav-node, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-servo";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_servo/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "a2e2faeae408d50d17901d3e3a51c8c53aa0d35c0d217633b7d2b79eaf79a796";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ control-msgs geometry-msgs joy-teleop moveit-msgs moveit-ros-planning-interface rosparam-shortcuts sensor-msgs spacenav-node std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
