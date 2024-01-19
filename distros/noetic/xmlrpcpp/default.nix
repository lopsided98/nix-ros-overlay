
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-noetic-xmlrpcpp";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/xmlrpcpp/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "6559437e2e8e7607509a25b1d1ab10a752412ff2576860cad55df5ec66196bc0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ boost ];
  propagatedBuildInputs = [ cpp-common rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''XmlRpc++ is a C++ implementation of the XML-RPC protocol. This version is
    heavily modified from the package available on SourceForge in order to
    support roscpp's threading model. As such, we are maintaining our
    own fork.'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
