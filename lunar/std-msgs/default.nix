
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-std-msgs";
  version = "0.5.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/std_msgs-release/archive/release/lunar/std_msgs/0.5.11-0.tar.gz;
    sha256 = "0db7f599d921835e3c0e94846828fa75a50b7eee8f5c14a79c3a918a2d30d004";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard ROS Messages including common message types representing primitive data types and other basic message constructs, such as multiarrays.
    For common, generic robot-specific message types, please see <a href="http://www.ros.org/wiki/common_msgs">common_msgs</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
