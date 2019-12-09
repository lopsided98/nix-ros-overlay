
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-generation, geometry-msgs, std-msgs, tf, catkin, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-arm-navigation-msgs";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/arm_navigation_msgs/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "4da8f9b727646dd5d6434e80e074a72c63d572a60c3c4350d7db6eaca6c04847";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs tf actionlib-msgs message-generation ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs tf actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''arm_navigation_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
