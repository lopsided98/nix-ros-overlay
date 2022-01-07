
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rc-common-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_msgs/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "ba2c6748e5e0f8b2a0660a91627b99b7323acfc906771fa76426a17545047ba5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rc-common-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Msg and srv definitions for rc_reason_clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
