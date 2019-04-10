
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, message-generation, uuv-gazebo-ros-plugins-msgs, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-thruster-manager";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_thruster_manager/0.6.10-0.tar.gz;
    sha256 = "b37fcf9a71cf0055bbc0089becbcac6fa9e8a0b4d29d0a6567e6f23d815607d0";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ uuv-gazebo-ros-plugins-msgs message-runtime rospy std-msgs geometry-msgs tf pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    #license = lib.licenses.Apache-2.0;
  };
}
