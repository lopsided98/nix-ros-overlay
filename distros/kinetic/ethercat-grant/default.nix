
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ethercat-grant";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ethercat_grant-release/archive/release/kinetic/ethercat_grant/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "5ed7a26c971fa3db0886d9661e2172d924b62d9c28244e8b9b9c5a4cdd570b58";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
