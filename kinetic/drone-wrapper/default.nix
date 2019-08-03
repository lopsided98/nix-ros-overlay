
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, sensor-msgs, mavros, cv-bridge, catkin, rospy, tf, mavros-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-drone-wrapper";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/JdeRobot/drones-release/archive/release/kinetic/drone_wrapper/1.0.0-1.tar.gz;
    sha256 = "2264aca962e73e8f377c31097207692f8ecd20456ae42d23b89a787143b689c2";
  };

  buildInputs = [ gazebo-ros sensor-msgs mavros cv-bridge rospy tf mavros-msgs geometry-msgs ];
  propagatedBuildInputs = [ gazebo-ros sensor-msgs mavros cv-bridge rospy tf mavros-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
