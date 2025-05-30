
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-noetic-xmlrpcpp";
  version = "1.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/xmlrpcpp/1.17.4-1.tar.gz";
    name = "1.17.4-1.tar.gz";
    sha256 = "87e9f43c8f184602ab097c120a7c9d1fcbb8cb6dfb82dd215037e6ba445e39fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ boost ];
  propagatedBuildInputs = [ cpp-common rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "XmlRpc++ is a C++ implementation of the XML-RPC protocol. This version is
    heavily modified from the package available on SourceForge in order to
    support roscpp's threading model. As such, we are maintaining our
    own fork.";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
