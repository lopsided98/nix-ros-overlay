
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, catkin, rostest, robot-state-publisher, rosunit, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-uuv-descriptions";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_descriptions/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "b502f0791f2a6185ec41cd24b0a7bc29d2edb5c219ba6e21e6112017e071eff1";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants robot-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
