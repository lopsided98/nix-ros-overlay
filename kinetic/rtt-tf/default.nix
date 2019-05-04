
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt, rtt-geometry-msgs, catkin, rtt-roscomm, tf }:
buildRosPackage {
  pname = "ros-kinetic-rtt-tf";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_tf/2.9.1-0.tar.gz;
    sha256 = "3041ee21231e6bb722a3551d16c55748166733888161e4d3a1b91346c1d06021";
  };

  buildInputs = [ rtt-geometry-msgs tf rtt rtt-roscomm ];
  propagatedBuildInputs = [ rtt-geometry-msgs tf rtt rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the components of the rtt_tf package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
