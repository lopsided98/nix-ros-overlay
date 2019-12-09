
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-gazebo-ros-plugins, robot-state-publisher, uuv-assistants, catkin, rosunit, gazebo-ros-control, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-melodic-uuv-descriptions";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_descriptions/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "b502f0791f2a6185ec41cd24b0a7bc29d2edb5c219ba6e21e6112017e071eff1";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ xacro uuv-sensor-ros-plugins uuv-gazebo-ros-plugins robot-state-publisher uuv-assistants gazebo-ros-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
