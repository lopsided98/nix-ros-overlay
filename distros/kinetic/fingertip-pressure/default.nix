
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, pr2-msgs, rospy, rostest, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fingertip-pressure";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/fingertip_pressure/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "b35507f0ab9bd282917899968b834b8df0beeb1ab9c628d59356c37d687296ca";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pr2-msgs rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides access to the PR2 fingertip pressure sensors. This information includes:'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
