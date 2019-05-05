
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, catkin, roscpp, rostest, visualization-msgs, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-lunar-interactive-markers";
  version = "1.11.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/interactive_markers-release/archive/release/lunar/interactive_markers/1.11.3-0.tar.gz;
    sha256 = "43359e030f6c01b73645bd253f0c97bdbe9ae93820dca0ab05db127936d0c795";
  };

  buildInputs = [ rosconsole roscpp rostest visualization-msgs rospy std-msgs tf ];
  propagatedBuildInputs = [ rosconsole roscpp rostest visualization-msgs rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
