
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ethercat-grant";
  version = "0.2.5-r3";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ethercat_grant-release/archive/release/noetic/ethercat_grant/0.2.5-3.tar.gz";
    name = "0.2.5-3.tar.gz";
    sha256 = "5038c00d18399930e6b88a67b0472a4b89ee3ad5c97e2110f5872975caf60cbb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
