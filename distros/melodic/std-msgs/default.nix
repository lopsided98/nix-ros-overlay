
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-std-msgs";
  version = "0.5.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/std_msgs-release/archive/release/melodic/std_msgs/0.5.12-0.tar.gz";
    name = "0.5.12-0.tar.gz";
    sha256 = "4e8b6a65ca70e92bbc9044c99cde67b5859392f6489e3e2fd7fc74844cedce1c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard ROS Messages including common message types representing primitive data types and other basic message constructs, such as multiarrays.
    For common, generic robot-specific message types, please see <a href="http://www.ros.org/wiki/common_msgs">common_msgs</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
