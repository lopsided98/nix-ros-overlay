
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, rospy }:
buildRosPackage {
  pname = "ros-noetic-ddynamic-reconfigure-python";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure_python-release/archive/release/noetic/ddynamic_reconfigure_python/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "b99b19d692984bb83a34afb74dbe92b3d4e7bde5e89afd47cacbc57e3963df5a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure_python package contains
    a class to instantiate dynamic reconfigure servers on the fly
    registering variables'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
