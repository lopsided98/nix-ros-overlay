
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-kobuki-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_msgs-release/archive/release/noetic/kobuki_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "201bad0e573625f3b2f4da22f6d9d4292acddd5c99db3fa5033262c367e7a5ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Kobuki message and service types: custom messages and services for Kobuki packages.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
