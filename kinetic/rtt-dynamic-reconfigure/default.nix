
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosnode, rtt-ros, catkin, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rtt-dynamic-reconfigure";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_dynamic_reconfigure/2.9.1-0.tar.gz;
    sha256 = "a78802b54ba63874baffcd130dc05b1b22f338ef0241aceb7658862a2c0be00f";
  };

  propagatedBuildInputs = [ rtt-rosnode roscpp rtt-ros dynamic-reconfigure ];
  nativeBuildInputs = [ catkin roscpp rtt-ros dynamic-reconfigure ];

  meta = {
    description = ''The rtt_dynamic_reconfigure package'';
    #license = lib.licenses.BSD;
  };
}
