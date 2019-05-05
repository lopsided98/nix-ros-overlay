
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-katana-msgs";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_msgs/1.1.2-0.tar.gz;
    sha256 = "ede3c57e8d0704ad0224dadf3821eb9ab18e145319303fa2f5a83ddbd062720f";
  };

  buildInputs = [ sensor-msgs message-generation actionlib-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages specific to the Neuronics Katana arm.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
