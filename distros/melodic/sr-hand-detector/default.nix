
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-sr-hand-detector";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/melodic/sr_hand_detector/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "73336699528058fa293a8597caf687bcbefc4c71735de10f5f172b8f21e8d94a";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libyamlcpp roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sr_hand_detector package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
