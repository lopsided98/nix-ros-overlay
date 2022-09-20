
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, led-msgs, rospy, xacro }:
buildRosPackage {
  pname = "ros-melodic-clover-simulation";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover_simulation/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "a3ae1cd0f1898d8b65411101dd012b63f7441b3e8b948ef3b3b6acfdf1b77f39";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros led-msgs rospy xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clover_simulation package provides worlds and launch files for Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
