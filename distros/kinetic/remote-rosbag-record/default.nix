
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-remote-rosbag-record";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/remote_rosbag_record-release/archive/release/kinetic/remote_rosbag_record/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "e698fc6d26845d7cd2cdf5653eab92cba5853271260eaad95d3c8ef9a6195e33";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The remote_rosbag_record package'';
    license = with lib.licenses; [ mit ];
  };
}
