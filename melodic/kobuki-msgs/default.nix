
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-kobuki-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_msgs-release/archive/release/melodic/kobuki_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "11990d638a2cea62be1b3f6a33e17a6ac080ec52eda926bb69c173d7c14166ee";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation actionlib-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Kobuki message and service types: custom messages and services for Kobuki packages.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
