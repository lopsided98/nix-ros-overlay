
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-sbg-driver";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/lunar/sbg_driver/1.1.7-0.tar.gz;
    sha256 = "abe0ab5b7deabd7e69d4ded311ba60f96f2b37ec1ee502c43fd4d213747f4b1b";
  };

  buildInputs = [ std-srvs message-generation std-msgs sensor-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime std-msgs sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The SBG ROS Driver package'';
    #license = lib.licenses.MIT;
  };
}
