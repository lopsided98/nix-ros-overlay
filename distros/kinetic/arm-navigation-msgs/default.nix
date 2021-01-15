
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, tf, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-arm-navigation-msgs";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/arm_navigation_msgs/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "4da8f9b727646dd5d6434e80e074a72c63d572a60c3c4350d7db6eaca6c04847";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs tf trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''arm_navigation_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
