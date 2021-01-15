
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, robot-state-publisher, rostest, rosunit, uuv-assistants, uuv-descriptions, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-eca-a9-description";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/eca_a9-release/archive/release/kinetic/eca_a9_description/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "f574b5b5773bf892075d31d18c81762dc0a4296e744e1a004bc2d7c74716bb30";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros robot-state-publisher uuv-assistants uuv-descriptions uuv-gazebo-ros-plugins uuv-sensor-ros-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description for the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
