
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, mavros, geometry-msgs, tf, catkin, mavros-msgs, cv-bridge, gazebo-ros, rospy }:
buildRosPackage {
  pname = "ros-kinetic-drone-wrapper";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/kinetic/drone_wrapper/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "82697ffd8540b432470f10e7ce9a6b622f49a5a7f03af57c9e9ca746bdd7d583";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs mavros geometry-msgs tf mavros-msgs cv-bridge gazebo-ros rospy ];
  propagatedBuildInputs = [ sensor-msgs mavros geometry-msgs tf mavros-msgs cv-bridge gazebo-ros rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
