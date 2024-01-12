
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rospy, rostest, rqt-gui, rqt-gui-py, rqt-py-common, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-ez-publisher";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/OTL/rqt_ez_publisher-release/archive/release/noetic/rqt_ez_publisher/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "98dc5d29814595ff0c787d0de226df7a6a5e28ffb818669c8b8b550cd67252a9";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg rostest ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rospy rqt-gui rqt-gui-py rqt-py-common tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
