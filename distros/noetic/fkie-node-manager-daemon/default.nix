
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, fkie-master-discovery, fkie-multimaster-msgs, python3Packages, roslaunch, rospy, rostest, screen }:
buildRosPackage {
  pname = "ros-noetic-fkie-node-manager-daemon";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_node_manager_daemon/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "8d383e3e6f87eecaed1b889cd85bdd2595efa64b41404cec3c79621e3fda5c0f";
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
