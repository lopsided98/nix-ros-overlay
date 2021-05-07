
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ethercat-grant";
  version = "0.2.5-r5";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ethercat_grant-release/archive/release/noetic/ethercat_grant/0.2.5-5.tar.gz";
    name = "0.2.5-5.tar.gz";
    sha256 = "9ad306c1bb8772ccb1ec19c4baae841715a3e16e3d36116a57ab21486d596c60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
