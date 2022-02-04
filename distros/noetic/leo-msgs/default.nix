
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "0e823c87c206d5bd3f169b8032b0458dd2fb8a95e7f24d4bc5519f00b337afad";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and Service definitions for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
