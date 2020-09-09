
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosconsole, roscpp, rostest, rosunit, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-message-filters";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/message_filters/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "b663a931c219870a481fbe9b48b1eacc993ade635f29b94b61b5d0cb82545639";
  };

  buildType = "catkin";
  buildInputs = [ boost rostest rosunit ];
  propagatedBuildInputs = [ rosconsole roscpp xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
