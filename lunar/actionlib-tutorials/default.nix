
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-actionlib-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/lunar/actionlib_tutorials/0.1.10-0.tar.gz;
    sha256 = "3b060785dae27b5af99636cfebe5f72b91ac9a98ab2e2dec977378fbc6ccf4c1";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib std-msgs roscpp ];
  propagatedBuildInputs = [ roscpp message-runtime actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
