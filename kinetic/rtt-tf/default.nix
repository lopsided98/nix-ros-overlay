
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt, rtt-geometry-msgs, catkin, rtt-roscomm, tf }:
buildRosPackage {
  pname = "ros-kinetic-rtt-tf";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_tf/2.9.2-1.tar.gz;
    sha256 = "e0702f6aa054370d4510a61dd78c24123e5e917b7922597ec4ae5f53f7108093";
  };

  buildInputs = [ rtt-geometry-msgs tf rtt rtt-roscomm ];
  propagatedBuildInputs = [ rtt-geometry-msgs tf rtt rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the components of the rtt_tf package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
