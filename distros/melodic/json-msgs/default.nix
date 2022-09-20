
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-json-msgs";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/locusrobotics/json_transport-release/archive/release/melodic/json_msgs/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "bf40e01a92a86cd7c5f7c56e26b160dd8425c7bdcaee3d407ceac8f6dfc115f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON ROS message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
