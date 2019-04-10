
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, catkin, leg-detector, people-velocity-tracker, people-tracking-filter, face-detector }:
buildRosPackage {
  pname = "ros-lunar-people";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/lunar/people/1.1.2-1.tar.gz;
    sha256 = "a8fa32299717ff9d99ddded5327f8638931c58687b225dd653afe75dc1ce6628";
  };

  propagatedBuildInputs = [ people-velocity-tracker face-detector people-msgs people-tracking-filter leg-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    #license = lib.licenses.BSD;
  };
}
