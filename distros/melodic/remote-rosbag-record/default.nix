
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-remote-rosbag-record";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/remote_rosbag_record-release/archive/release/melodic/remote_rosbag_record/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "a94f1d10d7a46c46afb268a1c2de5eb8c0d0bf15abe6f72678c959da87ef3447";
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
