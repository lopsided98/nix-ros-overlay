
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ur-msgs";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_msgs/1.2.5-0.tar.gz;
    sha256 = "ec785d4ec612d9a67d1a4bdaa38cd2e13320ce7feda22c4fcac1aec61bc632ab";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ur_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
