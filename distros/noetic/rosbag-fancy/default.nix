
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, ncurses, rosbag-fancy-msgs, rosbag-storage, roscpp, rosfmt, roslz4, std-srvs, tf2-ros, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosbag-fancy";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosbag_fancy-release/archive/release/noetic/rosbag_fancy/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c7f7a8026c1a12bec25d47069d1d43291077cb3448218534d134f3ecdef29a22";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost bzip2 ncurses rosbag-fancy-msgs rosbag-storage roscpp rosfmt roslz4 std-srvs tf2-ros topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosbag with terminal UI";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
