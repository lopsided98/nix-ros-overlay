
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, glog, libyamlcpp, mav-msgs, mavros, octomap, octomap-msgs, octomap-ros, protobuf, rosbag, roscpp, rotors-comm, rotors-control, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rotors-gazebo-plugins";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_gazebo_plugins/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "9a4fc0b6f45d9fe43292fa7b4656ea3190c32928c36b33aee9adfaa0c3fafcd2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules cv-bridge gazebo gazebo-plugins gazebo-ros geometry-msgs glog libyamlcpp mav-msgs mavros octomap octomap-msgs octomap-ros protobuf rosbag roscpp rotors-comm rotors-control std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_gazebo_plugins package'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
