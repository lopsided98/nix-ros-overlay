
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, led-msgs, rospy, xacro }:
buildRosPackage {
  pname = "ros-melodic-clover-simulation";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover_simulation/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "b99255dcb946b46ece99e2858c913e7eedbe8ffd9e92945884b9cc8d2d52da89";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros led-msgs rospy xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clover_simulation package provides worlds and launch files for Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
