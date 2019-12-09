
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, roscpp-serialization, std-msgs, catkin, rostime, roscpp, message-runtime, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-roscpp-tutorials";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/roscpp_tutorials/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "ea926bbb8d417ecfd5116647ffc45ede193fd3d6ad838c89b026560ce56e7987";
  };

  buildType = "catkin";
  buildInputs = [ roscpp-serialization std-msgs rostime roscpp message-generation rosconsole ];
  propagatedBuildInputs = [ roscpp-serialization std-msgs rostime roscpp message-runtime rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS step-by-step,
    including using messages, servers, parameters, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
