
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs, pr2-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-fingertip-pressure";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/lunar/fingertip_pressure/1.8.18-0.tar.gz;
    sha256 = "ebb7ccbf47e36669f3ddda8b60b6b712090d2f5b5ae2687bc61470dfa02cdf76";
  };

  buildInputs = [ std-msgs rostest message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs pr2-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides access to the PR2 fingertip pressure sensors. This information includes:'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
