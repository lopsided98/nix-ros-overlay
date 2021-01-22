
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslib, rospy, visualization-msgs, world-canvas-msgs }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-client-py";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/world_canvas_libs-release/archive/release/kinetic/world_canvas_client_py/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "03190beaff03e0dcc9102ee6ec48051ed0252ac3744e90cdf2bce10359e3f3b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pymongo roslib rospy visualization-msgs world-canvas-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python client library to access semantic maps within the world canvas framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
