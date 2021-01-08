
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-msgs";
  version = "2.2.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_msgs-release/archive/release/kinetic/turtlebot_msgs/2.2.1-0.tar.gz";
    name = "2.2.1-0.tar.gz";
    sha256 = "5bdf6f93d6ec13fe89b3798333660c33d41736728ff3907e3f4b323a716618b1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Turtlebot messages, services and actions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
