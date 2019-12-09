
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, rocon-std-msgs, message-generation, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-scheduler-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/scheduler_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "1b4d4544455c6a6b0cd9dfa8388e3f497ada0125fd906b544ccdb0d23a491a71";
  };

  buildType = "catkin";
  buildInputs = [ rocon-std-msgs std-msgs message-generation uuid-msgs ];
  propagatedBuildInputs = [ rocon-std-msgs std-msgs message-runtime uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by the rocon scheduler.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
