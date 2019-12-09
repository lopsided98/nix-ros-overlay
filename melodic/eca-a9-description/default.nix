
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-gazebo-ros-plugins, robot-state-publisher, uuv-descriptions, uuv-assistants, catkin, rosunit, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-melodic-eca-a9-description";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/eca_a9-release/archive/release/melodic/eca_a9_description/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "755c4708260a898bf6311271a70f9f48379327eb3c5721727afba6dc94fb035f";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ uuv-sensor-ros-plugins uuv-descriptions robot-state-publisher uuv-gazebo-ros-plugins uuv-assistants gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description for the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
