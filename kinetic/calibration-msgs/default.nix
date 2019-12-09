
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-calibration-msgs";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration_msgs/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "06091916a347322682b045d233b577b718eb339d4cd9c0fb2806346e45f7187d";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for storing calibration samples
     to be used in full robot calibration procedures. This package
     is still unstable. Expect the messages to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
