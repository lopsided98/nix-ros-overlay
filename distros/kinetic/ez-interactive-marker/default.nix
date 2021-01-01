
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, pythonPackages, roslib, rospy, rospy-message-converter, rostest, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ez-interactive-marker";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/neka-nat/ez_interactive_marker-release/archive/release/kinetic/ez_interactive_marker/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "eedeb0e20406c9ae3c30e3613ab12589fe5904243fcf2d14ac98fce2951e6a54";
  };

  buildType = "catkin";
  buildInputs = [ interactive-markers rostest ];
  checkInputs = [ pythonPackages.nose ];
  propagatedBuildInputs = [ roslib rospy rospy-message-converter std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Easily create interactive markers from yaml files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
