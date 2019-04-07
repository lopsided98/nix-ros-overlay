
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-arm-navigation-msgs";
  version = "0.0.6";

  src = fetchurl {
    url = https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/arm_navigation_msgs/0.0.6-0.tar.gz;
    sha256 = "4da8f9b727646dd5d6434e80e074a72c63d572a60c3c4350d7db6eaca6c04847";
  };

  buildInputs = [ message-generation actionlib-msgs std-msgs trajectory-msgs sensor-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs std-msgs trajectory-msgs sensor-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''arm_navigation_msgs'';
    #license = lib.licenses.BSD;
  };
}
