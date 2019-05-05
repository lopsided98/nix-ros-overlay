
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-json-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/locusrobotics/json_transport-release/archive/release/lunar/json_msgs/0.0.1-0.tar.gz;
    sha256 = "d7a6927a3b3a2bb73ca456396a0e69b86b6c71a9a4176b83cbe626021485aefd";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON ROS message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
