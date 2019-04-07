
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-neobotix-usboard-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/neobotix_usboard_msgs/2.3.1-0.tar.gz;
    sha256 = "a85796618e8e9b7092aff7b93ed2c83becbf7f6ad4ba74fdd2afacdee2f800bf";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''neobotix_usboard package'';
    #license = lib.licenses.MIT;
  };
}
