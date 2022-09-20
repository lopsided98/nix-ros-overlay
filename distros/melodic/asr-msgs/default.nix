
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-asr-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/asr-ros/asr_msgs-release/archive/release/melodic/asr_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ea5f3bfcc30e4036c5ae3a033262477d2f7f6998819a564a82137de15a9341d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains all messages that are particular to our Active Scene Recognition - Framework at 
		Humanoids and Intelligence Systems Lab (HIS), Karlsruhe Institute of Technology (KIT).
	  These messages make up the interfaces between the different collaborating components of this system.
	  They are of critical importance and structured by the ROS communication capabilities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
