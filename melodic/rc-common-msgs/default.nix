
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rc-common-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_common_msgs-release/archive/release/melodic/rc_common_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "c1825f1534ee3e8186d61dff3462b0bf7fcd0e54104be8d09180220a5a1cd3c2";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
