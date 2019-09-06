
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit }:
buildRosPackage {
  pname = "ros-melodic-eca-a9-description";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/eca_a9-release/archive/release/melodic/eca_a9_description/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "755c4708260a898bf6311271a70f9f48379327eb3c5721727afba6dc94fb035f";
  };

  buildType = "catkin";
  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants uuv-descriptions robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description for the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
