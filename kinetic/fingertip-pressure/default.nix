
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, pr2-msgs, std-msgs, catkin, rospy, visualization-msgs, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-fingertip-pressure";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/fingertip_pressure/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "b35507f0ab9bd282917899968b834b8df0beeb1ab9c628d59356c37d687296ca";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs rostest ];
  propagatedBuildInputs = [ geometry-msgs pr2-msgs std-msgs rospy visualization-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides access to the PR2 fingertip pressure sensors. This information includes:'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
