
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, tf2-msgs, sensor-msgs, rqt-gui, catkin, pythonPackages, rostest, rospy, rqt-py-common, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-ez-publisher";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/OTL/rqt_ez_publisher-release/archive/release/kinetic/rqt_ez_publisher/0.5.0-0.tar.gz;
    sha256 = "6e176a7203d0d4ca4230bc3e9e1f87403c767ec3a20a3ae923c80d06316bf5d1";
  };

  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ rqt-gui-py tf2-msgs rqt-gui rospy rqt-py-common tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
