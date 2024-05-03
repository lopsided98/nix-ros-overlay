
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidgets, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-phidgets";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_phidgets/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "a87a57a7cf404febb3fcb396643360082a3ee8a529a799b45f513e44538b15aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ libphidgets message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "cob_phidgets";
    license = with lib.licenses; [ asl20 ];
  };
}
