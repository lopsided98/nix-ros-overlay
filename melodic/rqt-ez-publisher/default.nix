
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, rqt-py-common, tf, catkin, pythonPackages, rqt-gui-py, tf2-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-rqt-ez-publisher";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/OTL/rqt_ez_publisher-release/archive/release/melodic/rqt_ez_publisher/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0ddd9a4715365473360ac5443887e7da747eb8280c7c9f90894f304131582f7a";
  };

  buildType = "catkin";
  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ rqt-gui geometry-msgs rqt-py-common tf rqt-gui-py tf2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
