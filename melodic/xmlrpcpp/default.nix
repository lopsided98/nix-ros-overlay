
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cpp-common, catkin, rostime }:
buildRosPackage {
  pname = "ros-melodic-xmlrpcpp";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/xmlrpcpp/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "d141854dd4371212f6606bfff6f7a44eb1a0292bbcf64cf29f4fed0c0741bc76";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common rostime ];
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
