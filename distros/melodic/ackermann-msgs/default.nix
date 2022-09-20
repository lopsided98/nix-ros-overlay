
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ackermann-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/ackermann_msgs-release/archive/release/melodic/ackermann_msgs/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "2696633432ef72489b77e8ff6b0d4782e2e526a62fda01c92d984348b4b0e13b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
