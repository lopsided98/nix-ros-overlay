
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, actionlib, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-realtime-tools";
  version = "1.14.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/realtime_tools-release/archive/release/melodic/realtime_tools/1.14.0-1.tar.gz;
    sha256 = "7850c4b678c90f7b427389d8acc45e771bb6e92edc0a89d05bfa017f31f114b0";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest rosunit actionlib ];
  propagatedBuildInputs = [ roscpp actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
