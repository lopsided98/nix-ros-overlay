
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, fkie-master-discovery, fkie-multimaster-msgs, python3Packages, roslaunch, rospy, rostest, screen }:
buildRosPackage {
  pname = "ros-noetic-fkie-node-manager-daemon";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_node_manager_daemon/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "a090f241441194fb73e5cb7d0810ee5a8e795f9d9b1889a390442fada14e48d2";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.catkin-pkg ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs fkie-master-discovery fkie-multimaster-msgs python3Packages.grpcio python3Packages.psutil python3Packages.rospkg python3Packages.ruamel_yaml roslaunch rospy screen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A daemon node to manage ROS launch files and launch nodes from loaded files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
