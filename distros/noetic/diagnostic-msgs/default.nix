
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-msgs";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/diagnostic_msgs/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "c7837360b3b3f69b02d2b452653827d70d4d24a209abdfed8f447b165f4c8d50";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds the diagnostic messages which provide the
    standardized interface for the diagnostic and runtime monitoring
    systems in ROS. These messages are currently used by
    the <a href="http://wiki.ros.org/diagnostics">diagnostics</a>
    Stack, which provides libraries for simple ways to set and access
    the messages, as well as automated ways to process the diagnostic
    data.

    These messages are used for long term logging and will not be
    changed unless there is a very important reason.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
