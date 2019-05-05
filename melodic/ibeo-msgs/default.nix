
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-ibeo-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/ibeo_msgs/2.3.1-0.tar.gz;
    sha256 = "dea8e5394662faf24cdc6a29a2d03de48952bf5000498f87110a5735c413e2f2";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for Ibeo sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
