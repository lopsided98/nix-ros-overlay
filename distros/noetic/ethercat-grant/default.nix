
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ethercat-grant";
  version = "0.2.5-r8";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ethercat_grant-release/archive/release/noetic/ethercat_grant/0.2.5-8.tar.gz";
    name = "0.2.5-8.tar.gz";
    sha256 = "80d218cfca1fce8082d3de1059c7c84599adc2bc32ddd0980003275378a35be8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
