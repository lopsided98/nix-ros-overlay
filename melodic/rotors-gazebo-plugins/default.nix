
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazeboSimulator, mavros, geometry-msgs, tf, mav-msgs, protobuf, glog, octomap, cmake-modules, libyamlcpp, rosbag, std-srvs, rotors-control, catkin, cv-bridge, roscpp, gazebo-ros, octomap-msgs, octomap-ros, rotors-comm, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-rotors-gazebo-plugins";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_gazebo_plugins/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "9a4fc0b6f45d9fe43292fa7b4656ea3190c32928c36b33aee9adfaa0c3fafcd2";
  };

  buildType = "catkin";
  buildInputs = [ mavros geometry-msgs tf mav-msgs protobuf glog octomap cmake-modules libyamlcpp rosbag std-srvs rotors-control cv-bridge roscpp gazebo-ros gazeboSimulator.gazebo octomap-msgs octomap-ros rotors-comm gazebo-plugins ];
  propagatedBuildInputs = [ mavros geometry-msgs tf mav-msgs protobuf glog octomap cmake-modules libyamlcpp rosbag std-srvs rotors-control cv-bridge roscpp gazebo-ros gazeboSimulator.gazebo octomap-msgs octomap-ros rotors-comm gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_gazebo_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
