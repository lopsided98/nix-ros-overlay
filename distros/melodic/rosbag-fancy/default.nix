
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ncurses, rosbag-storage, roscpp, rosfmt, tf2-ros, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-rosbag-fancy";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosbag_fancy-release/archive/release/melodic/rosbag_fancy/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "839e4c131c6da7f0ea872b61667ce56b81e6db21a3aa5e0c3145ed9e9097eb40";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ncurses rosbag-storage roscpp rosfmt tf2-ros topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbag with terminal UI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
