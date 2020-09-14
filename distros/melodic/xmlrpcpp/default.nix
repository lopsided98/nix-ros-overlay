
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-melodic-xmlrpcpp";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/xmlrpcpp/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "ab3a8a2ac3015d0439ee655e46d7cb8b0d84e8920ff676c176dce6655be4d3ce";
  };

  buildType = "catkin";
  checkInputs = [ boost ];
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
