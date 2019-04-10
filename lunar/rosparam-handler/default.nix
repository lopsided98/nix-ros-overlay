
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-rosparam-handler";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/cbandera/rosparam_handler-release/archive/release/lunar/rosparam_handler/0.1.4-0.tar.gz;
    sha256 = "eb479dfc03bfb3b5518b810a3c1d8f8b78a7b0a23f20c9eef2dd3e0d4e281c10";
  };

  buildInputs = [ rostest ];
  checkInputs = [ roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An easy wrapper for using parameters in ROS.'';
    #license = lib.licenses.BSD;
  };
}
