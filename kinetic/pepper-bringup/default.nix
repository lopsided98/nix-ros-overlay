
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pepper-description, naoqi-pose, pepper-sensors-py, rostest, naoqi-driver-py, rgbd-launch, naoqi-sensors-py, naoqi-driver, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-pepper-bringup";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-naoqi/pepper_robot-release/archive/release/kinetic/pepper_bringup/0.1.10-0.tar.gz;
    sha256 = "978136b61e085188498f2449928d159a80aec59075ed6acaad4874610f7d52f7";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ pepper-sensors-py naoqi-driver-py rgbd-launch naoqi-sensors-py naoqi-driver pepper-description naoqi-pose ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pepper_bringup package'';
    #license = lib.licenses.Apache 2.0;
  };
}
