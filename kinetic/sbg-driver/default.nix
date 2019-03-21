
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sbg-driver";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/ENSTABretagneRobotics/sbg_ros_driver-release/archive/release/kinetic/sbg_driver/1.1.7-0.tar.gz;
    sha256 = "6ed1e97b68eef62f702922cbeb80dad354ae1fb1f173884be4b2bb427f8f054b";
  };

  propagatedBuildInputs = [ std-srvs message-runtime std-msgs sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs message-generation catkin std-msgs sensor-msgs roscpp geometry-msgs ];

  meta = {
    description = ''The SBG ROS Driver package'';
    #license = lib.licenses.MIT;
  };
}
