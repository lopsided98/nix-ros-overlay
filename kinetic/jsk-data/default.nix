
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, rqt-bag, roslint, image-transport, pythonPackages, jsk-topic-tools, message-generation, openni-launch, rviz, message-runtime, roslaunch, xacro, depth-image-proc, rosbag, catkin, tf2-ros, pr2-machine, nodelet, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-jsk-data";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_data/2.2.10-0.tar.gz;
    sha256 = "8fa0a3e4071d069ea1112fd33ac661fd5547f464de66b9d1fcf6ec75e8f7bbc3";
  };

  buildInputs = [ message-generation dynamic-reconfigure ];
  checkInputs = [ roslint pythonPackages.nose rostest roslaunch pythonPackages.freezegun ];
  propagatedBuildInputs = [ depth-image-proc pr2-description pr2-machine image-transport rosbag jsk-topic-tools pythonPackages.pyyaml rqt-bag tf2-ros openni-launch rviz message-runtime dynamic-reconfigure pythonPackages.paramiko nodelet xacro pythonPackages.click ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_data package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
