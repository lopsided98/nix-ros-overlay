
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kdl-conversions, rtt }:
buildRosPackage {
  pname = "ros-kinetic-rtt-kdl-conversions";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_kdl_conversions/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "240d2a6b471858f995ac364d13bd03a3d06dd49ac622505f983d5f0926041a45";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kdl-conversions rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the components of the kdl_conversions package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
