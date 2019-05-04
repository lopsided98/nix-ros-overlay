
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mm-messages, mm-eigen-msgs, catkin, mm-mux-demux, mm-core-msgs, mm-radio }:
buildRosPackage {
  pname = "ros-kinetic-message-multiplexing";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/message_multiplexing/0.2.4-0.tar.gz;
    sha256 = "a3fee278389d9e261bafbcca25561c1ef2461d6dc5eeda6445805034aa96f8d5";
  };

  propagatedBuildInputs = [ mm-messages mm-eigen-msgs mm-mux-demux mm-core-msgs mm-radio ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight communication patterns built on top of nanomsg for
    use in embedded scenarios where only a single socket connection is desirable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
