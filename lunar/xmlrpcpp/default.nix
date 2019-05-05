
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostime, cpp-common, boost }:
buildRosPackage {
  pname = "ros-lunar-xmlrpcpp";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/xmlrpcpp/1.13.7-0.tar.gz;
    sha256 = "c373f49d0f1bb4caf28af2f9e410e109d0286772cc40108e7f4b6c14a0b3065c";
  };

  buildInputs = [ rostime cpp-common ];
  checkInputs = [ boost ];
  propagatedBuildInputs = [ rostime cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''XmlRpc++ is a C++ implementation of the XML-RPC protocol. This version is
    heavily modified from the package available on SourceForge in order to
    support roscpp's threading model. As such, we are maintaining our
    own fork.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
