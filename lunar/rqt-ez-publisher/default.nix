
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, tf2-msgs, sensor-msgs, rqt-gui, catkin, pythonPackages, rostest, rospy, rqt-py-common, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-ez-publisher";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/OTL/rqt_ez_publisher-release/archive/release/lunar/rqt_ez_publisher/0.4.0-0.tar.gz;
    sha256 = "b8779c8732e17146c0f49844202e0f1336f06ac42e912991da73fcd27f2c4c72";
  };

  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ rqt-gui-py tf2-msgs rospy tf rqt-py-common rqt-gui geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    #license = lib.licenses.BSD;
  };
}
