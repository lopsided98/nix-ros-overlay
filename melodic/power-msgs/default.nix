
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-power-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/power_msgs-release/archive/release/melodic/power_msgs/0.3.0-0.tar.gz;
    sha256 = "97f1dcb8217d6baa4939f53e64b59498cc550a26c3ed03f13249041f78ff120b";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''ROS messages for power measurement and breaker control.'';
    #license = lib.licenses.BSD;
  };
}
