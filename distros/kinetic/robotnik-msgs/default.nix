
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robotnik-msgs";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/robotnik_msgs-release/archive/release/kinetic/robotnik_msgs/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "5997ae3da9ecb371c7c27532319c33b9f8779395bf1e0d5a1891b4265e1fa263";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotnik_msgs package. Common messages and services used by some Robotnik's packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
