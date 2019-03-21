
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosgraph-msgs, rtt-std-srvs, rtt-std-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros-comm";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_comm/2.9.1-0.tar.gz;
    sha256 = "6f7487eeea5ab0cdf9e588f229af9ac50cba73c8ad442b2fd90d99fd53eff0d8";
  };

  propagatedBuildInputs = [ rtt-rosgraph-msgs rtt-std-srvs rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_ros_comm package'';
    #license = lib.licenses.BSD;
  };
}
