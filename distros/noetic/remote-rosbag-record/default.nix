
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-remote-rosbag-record";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/remote_rosbag_record-release/archive/release/noetic/remote_rosbag_record/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "2ee39861317e8d326b59c9c5e9df703ba2b648e2b49269690c603e509c1ee49b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The remote_rosbag_record package'';
    license = with lib.licenses; [ mit ];
  };
}
