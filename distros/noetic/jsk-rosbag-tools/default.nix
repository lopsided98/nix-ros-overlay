
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, catkin-virtualenv, cv-bridge, ffmpeg, python3Packages, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-rosbag-tools";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_rosbag_tools/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "8e22d3c59326332b5c106c495aa708b8fa99e1380670fcb57f700e2cd1062292";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv python3Packages.catkin-pkg ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ audio-common-msgs cv-bridge ffmpeg python3Packages.numpy python3Packages.pyyaml python3Packages.rospkg python3Packages.scipy python3Packages.setuptools python3Packages.termcolor python3Packages.tqdm sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

  meta = {
    description = "The rosbag tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
