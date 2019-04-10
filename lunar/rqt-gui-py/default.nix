
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, catkin, qt-gui, rospy }:
buildRosPackage {
  pname = "ros-lunar-rqt-gui-py";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/lunar/rqt_gui_py/0.5.0-0.tar.gz;
    sha256 = "67bfbfdf4139f5570fd613c9b55815a892b0ce3fef6e0221c1017cf793570d26";
  };

  buildInputs = [ rqt-gui qt-gui rospy ];
  propagatedBuildInputs = [ rqt-gui qt-gui rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    #license = lib.licenses.BSD;
  };
}
