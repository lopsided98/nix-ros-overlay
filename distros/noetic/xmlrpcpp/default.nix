
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-noetic-xmlrpcpp";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/xmlrpcpp/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "59056c9dc0bfdd2170c6c245bc19770609095e88ed79fc54ab943cf6482dfa00";
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
