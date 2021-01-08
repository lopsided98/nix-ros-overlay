
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, robot-state-publisher, rostest, rosunit, uuv-assistants, uuv-descriptions, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-desistek-saga-description";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/desistek_saga-release/archive/release/kinetic/desistek_saga_description/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "48887175109459a43f0c85ff4f74dc43cfc2824f8ef6ddf9f396458360453805";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros robot-state-publisher uuv-assistants uuv-descriptions uuv-gazebo-ros-plugins uuv-sensor-ros-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
