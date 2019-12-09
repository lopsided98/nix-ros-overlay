
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf, rtt, rtt-geometry-msgs, rtt-roscomm }:
buildRosPackage {
  pname = "ros-kinetic-rtt-tf";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_tf/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "e0702f6aa054370d4510a61dd78c24123e5e917b7922597ec4ae5f53f7108093";
  };

  buildType = "catkin";
  buildInputs = [ rtt rtt-roscomm tf rtt-geometry-msgs ];
  propagatedBuildInputs = [ rtt rtt-roscomm tf rtt-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the components of the rtt_tf package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
