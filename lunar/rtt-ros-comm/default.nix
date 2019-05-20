
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosgraph-msgs, rtt-std-srvs, rtt-std-msgs, catkin }:
buildRosPackage {
  pname = "ros-lunar-rtt-ros-comm";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_ros_comm/2.9.2-1.tar.gz;
    sha256 = "8b6814e4a7c7ede401fad584fa9d19ad1a617c2ec9a466ffce42d39a85ef3956";
  };

  propagatedBuildInputs = [ rtt-rosgraph-msgs rtt-std-srvs rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_ros_comm package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
