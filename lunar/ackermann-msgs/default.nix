
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-ackermann-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/ackermann_msgs-release/archive/release/lunar/ackermann_msgs/1.0.1-0.tar.gz;
    sha256 = "8b8598ad6531461ad8f7e352a64277c94dbc0a243ecd14f5c6fe1723554af40b";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
