
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-kinetic-xmlrpcpp";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/xmlrpcpp/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "fb662c176ae22ba7aba147004f7586b4233afad433d3b3e9906624da9dadd835";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''XmlRpc++ is a C++ implementation of the XML-RPC protocol. This version is
    heavily modified from the package available on SourceForge in order to
    support roscpp's threading model. As such, we are maintaining our
    own fork.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
