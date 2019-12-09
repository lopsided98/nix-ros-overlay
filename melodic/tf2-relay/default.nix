
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-relay, tf, catkin, roslint, tf2-msgs, roscpp, roslaunch, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-relay";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/tf2_relay/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "6052668a6f51ee065e7833b033ade709311193d3b62f662e38dd617eab05dc31";
  };

  buildType = "catkin";
  buildInputs = [ message-relay roscpp tf2-msgs ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ message-relay tf roscpp tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Specialization of message_relay for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
