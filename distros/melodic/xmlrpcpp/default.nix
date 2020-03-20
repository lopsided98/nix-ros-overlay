
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-melodic-xmlrpcpp";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/xmlrpcpp/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "b766cdf6c839a83ecd29b87eaf615dae5e6f482d23c1b05615b99a3c4300ca00";
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
