
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidgets, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-phidgets";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_phidgets/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "7c279d4265bb798f8d7355249b7b27eaf2fd08057394df29370e5bc6bbab90eb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ libphidgets message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
