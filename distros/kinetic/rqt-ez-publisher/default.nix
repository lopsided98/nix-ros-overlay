
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy, rostest, rqt-gui, rqt-gui-py, rqt-py-common, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-ez-publisher";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/OTL/rqt_ez_publisher-release/archive/release/kinetic/rqt_ez_publisher/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "6e176a7203d0d4ca4230bc3e9e1f87403c767ec3a20a3ae923c80d06316bf5d1";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg rostest ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rospy rqt-gui rqt-gui-py rqt-py-common tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
