
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-urg-stamped";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/noetic/urg_stamped/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "40947ca980975874e68103cd80dc4dae437b0d8f2cfd34c37c516bf801abb80d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Precisely stamped URG driver for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}
