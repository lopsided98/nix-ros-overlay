
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-remote-rosbag-record";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/remote_rosbag_record-release/archive/release/melodic/remote_rosbag_record/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "cd628e9f0ab862a341e6c3b466b384cb2a7ed83a52fd5c8beddfb98c9d96f8c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The remote_rosbag_record package'';
    license = with lib.licenses; [ mit ];
  };
}
