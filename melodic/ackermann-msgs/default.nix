
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-ackermann-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/ackermann_msgs-release/archive/release/melodic/ackermann_msgs/1.0.1-0.tar.gz;
    sha256 = "2696633432ef72489b77e8ff6b0d4782e2e526a62fda01c92d984348b4b0e13b";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
