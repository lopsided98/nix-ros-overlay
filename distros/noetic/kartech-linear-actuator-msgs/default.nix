
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-kartech-linear-actuator-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/noetic/kartech_linear_actuator_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "409afffc6e63a693cb50418eba87e72cf78eb1ba0f7880a2f6e96f8a191d15d4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The kartech_linear_actuator_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
