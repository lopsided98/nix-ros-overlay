
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ethercat-grant";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ethercat_grant-release/archive/release/noetic/ethercat_grant/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "4facbf12c0533551d600f3518b49560f9ddde5c9c9b2e30437765f197e4f419c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
