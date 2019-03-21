
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, catkin, rtt }:
buildRosPackage {
  pname = "ros-kinetic-rtt-kdl-conversions";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_kdl_conversions/2.9.1-0.tar.gz;
    sha256 = "64797229d92e8ec44f4886bd7203167cf302d58629e4c7fda1e5fba4b68e0dcf";
  };

  propagatedBuildInputs = [ kdl-conversions rtt ];
  nativeBuildInputs = [ kdl-conversions catkin rtt ];

  meta = {
    description = ''This package contains the components of the kdl_conversions package'';
    #license = lib.licenses.GPL;
  };
}
