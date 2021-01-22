
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-pilz-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "2820d86c2377128a1a3fe37ac2549d30cea943b1c06baa58fb079ea11812c1ef";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
