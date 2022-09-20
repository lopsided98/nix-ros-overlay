
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rocon-std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-interaction-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/rocon_interaction_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "b33c21e3c041db8fed2c23d369b2d9233da6f1f4008d82940be8a1fe236a9efb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rocon-std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by rocon interactions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
