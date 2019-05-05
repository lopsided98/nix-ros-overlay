
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-neobotix-usboard-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/lunar/neobotix_usboard_msgs/2.3.1-0.tar.gz;
    sha256 = "3f05b3f6f2791008691878a7f6a53cfccf37f6b686efb93341a7ac6991514ac1";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''neobotix_usboard package'';
    license = with lib.licenses; [ mit ];
  };
}
