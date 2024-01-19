
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-hark-msgs";
  version = "4.3.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/noetic/jsk_hark_msgs/4.3.2-1.tar.gz";
    name = "4.3.2-1.tar.gz";
    sha256 = "a3716e37532d49d5ca8565c09e68e01b88ca2f25da26a4b0f4360b473df6c2e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_hark_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
