
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rc-common-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-msgs";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_msgs/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "6e7cf26d186f3457cb17edc0a82eaf1ed382993094da1f3fd8290e9b95d6c14e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rc-common-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Msg and srv definitions for rc_reason_clients";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
