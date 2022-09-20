
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-msgs";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_msgs-release/archive/release/melodic/mrpt_msgs/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "71c42945e7dc24d7a6600f9d069f1657fa5b04ed5e1a7d23c7054e5dc742eb4c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
