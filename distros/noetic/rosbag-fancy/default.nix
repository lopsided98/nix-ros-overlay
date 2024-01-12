
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, ncurses, rosbag-fancy-msgs, rosbag-storage, roscpp, rosfmt, roslz4, std-srvs, tf2-ros, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosbag-fancy";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosbag_fancy-release/archive/release/noetic/rosbag_fancy/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b4ca4599a76b1f6b7e010e8b86250c82810294019c47e2135a968854d1a96ccf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost bzip2 ncurses rosbag-fancy-msgs rosbag-storage roscpp rosfmt roslz4 std-srvs tf2-ros topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbag with terminal UI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
