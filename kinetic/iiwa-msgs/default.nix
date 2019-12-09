
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-msgs";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_msgs/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "58bb0b65b6f24eb96cc6d61f70bad1d4db486737f18e6e0778ea4a02d8ea5633";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Messages to communicate with a KUKA LBR IIWA Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
