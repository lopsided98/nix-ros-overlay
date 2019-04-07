
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostime, cpp-common }:
buildRosPackage {
  pname = "ros-kinetic-xmlrpcpp";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/xmlrpcpp/1.12.14-0.tar.gz;
    sha256 = "1fd92e74b5bd909d2850ee9a30d0b814abb4e8fa303661fe7c40be2686c2a66a";
  };

  buildInputs = [ rostime cpp-common ];
  propagatedBuildInputs = [ rostime cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''XmlRpc++ is a C++ implementation of the XML-RPC protocol. This version is
    heavily modified from the package available on SourceForge in order to
    support roscpp's threading model. As such, we are maintaining our
    own fork.'';
    #license = lib.licenses.LGPL-2.1;
  };
}
