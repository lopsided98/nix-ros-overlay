
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs, pr2-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fingertip-pressure";
  version = "1.8.19-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/fingertip_pressure/1.8.19-1.tar.gz;
    sha256 = "24a090d31a677615de660c07ec0bc95bb80e2896d95455b806f3116c1ceb5c23";
  };

  buildInputs = [ std-msgs rostest message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs pr2-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides access to the PR2 fingertip pressure sensors. This information includes:'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
