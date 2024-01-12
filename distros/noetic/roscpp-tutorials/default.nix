
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, message-generation, message-runtime, rosconsole, roscpp, roscpp-serialization, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-roscpp-tutorials";
  version = "0.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/roscpp_tutorials/0.10.2-1.tar.gz";
    name = "0.10.2-1.tar.gz";
    sha256 = "061c038b00f6b75cf509199821f166e5c6a9a1e13041de1151dd5c69948c4ff5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost message-runtime rosconsole roscpp roscpp-serialization rostime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS step-by-step,
    including using messages, servers, parameters, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
