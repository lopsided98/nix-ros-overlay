
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, gazebo-plugins, octomap, tf, geometry-msgs, mav-msgs, mavros, gazeboSimulator, octomap-ros, glog, gazebo-ros, std-srvs, rosbag, catkin, octomap-msgs, protobuf, roscpp, cmake-modules, libyamlcpp, rotors-control, rotors-comm }:
buildRosPackage {
  pname = "ros-melodic-rotors-gazebo-plugins";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_gazebo_plugins/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "9a4fc0b6f45d9fe43292fa7b4656ea3190c32928c36b33aee9adfaa0c3fafcd2";
  };

  buildType = "catkin";
  buildInputs = [ gazeboSimulator.gazebo cv-bridge gazebo-plugins octomap tf geometry-msgs mav-msgs mavros octomap-ros glog gazebo-ros std-srvs rosbag octomap-msgs protobuf roscpp cmake-modules libyamlcpp rotors-control rotors-comm ];
  propagatedBuildInputs = [ gazeboSimulator.gazebo cv-bridge gazebo-plugins octomap tf geometry-msgs mav-msgs mavros octomap-ros glog gazebo-ros std-srvs rosbag octomap-msgs protobuf roscpp cmake-modules libyamlcpp rotors-control rotors-comm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_gazebo_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
