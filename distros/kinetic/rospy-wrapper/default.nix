
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rosbag, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rospy-wrapper";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/sean-hackett/rospy_wrapper-release/archive/release/kinetic/rospy_wrapper/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "be3ede3b02d9ca393dd105ab83026010f95a52886f999110af0a40b490613ed5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ std-msgs ];
  propagatedBuildInputs = [ rosbag rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rospy_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
