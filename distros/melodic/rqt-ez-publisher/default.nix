
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy, rostest, rqt-gui, rqt-gui-py, rqt-py-common, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-ez-publisher";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/OTL/rqt_ez_publisher-release/archive/release/melodic/rqt_ez_publisher/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0ddd9a4715365473360ac5443887e7da747eb8280c7c9f90894f304131582f7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg rostest ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rospy rqt-gui rqt-gui-py rqt-py-common tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
