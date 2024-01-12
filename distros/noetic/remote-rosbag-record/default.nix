
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-remote-rosbag-record";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/remote_rosbag_record-release/archive/release/noetic/remote_rosbag_record/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "2368a9fc7e072bf4aced606034a3cc0fe54c94e6fb09f522ac242fe7fbadc271";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosbag roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The remote_rosbag_record package'';
    license = with lib.licenses; [ mit ];
  };
}
