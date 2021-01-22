
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-sensors-py, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pepper-sensors-py";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_robot-release/archive/release/kinetic/pepper_sensors_py/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "97f2eeb21f132febd2c667003232292fab54ca2877ea246fba7ee7dd384b11fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ naoqi-sensors-py rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pepper_sensors package'';
    license = with lib.licenses; [ asl20 ];
  };
}
