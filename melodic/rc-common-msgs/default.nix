
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rc-common-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_common_msgs-release/archive/release/melodic/rc_common_msgs/0.2.1-1.tar.gz;
    sha256 = "0510e2724b20be04c132d6218f0e411382934c9ebb5c5f8254b87b8db903f3ce";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
