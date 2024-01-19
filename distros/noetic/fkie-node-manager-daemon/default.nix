
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, fkie-master-discovery, fkie-multimaster-msgs, python3Packages, roslaunch, rospy, rostest, screen }:
buildRosPackage {
  pname = "ros-noetic-fkie-node-manager-daemon";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_node_manager_daemon/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "972ea9be6f5dc6cb600a7dc3e157b5b9b16c20160e1c1aaf38c1373597347aae";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs fkie-master-discovery fkie-multimaster-msgs python3Packages.grpcio python3Packages.grpcio-tools python3Packages.psutil python3Packages.rospkg python3Packages.ruamel_yaml roslaunch rospy screen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A daemon node to manage ROS launch files and launch nodes from loaded files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
