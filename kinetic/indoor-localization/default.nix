
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-indoor-localization";
  version = "0.1.0-r1";

  src = fetchurl {
    url = https://github.com/inomuh/indoor_localization-release/archive/release/kinetic/indoor_localization/0.1.0-1.tar.gz;
    sha256 = "59fdc0c908dd33a16d7c6a5ef61715ec72565aa75446a8bbed2ef3e960b25061";
  };

  propagatedBuildInputs = [ rostest nav-msgs message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ rostest nav-msgs message-generation rospy std-msgs catkin roscpp ];

  meta = {
    description = ''The indoor_localization package'';
    #license = lib.licenses.BSD;
  };
}
