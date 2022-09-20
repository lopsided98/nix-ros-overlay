
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rosbag-snapshot-msgs, roscpp, rosgraph-msgs, roslint, rospy, rostest, rostopic, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-rosbag-snapshot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/melodic/rosbag_snapshot/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "3e14fb72af8e6f077fd2c6982e9d4b6737d01fa361168e3130d27e1c3c74be33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rospy rostest rostopic std-msgs ];
  propagatedBuildInputs = [ rosbag rosbag-snapshot-msgs roscpp rosgraph-msgs std-srvs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosbag_snapshot package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
