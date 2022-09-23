
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish-test-msgs";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish_test_msgs/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "7f7108fb6abb6252ecbcd985fad242d85b8b61a18626cbed814d93cd363bdf9a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test messages for the ros_babel_fish project tests.'';
    license = with lib.licenses; [ mit ];
  };
}
