
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, control-toolbox, controller-interface, controller-manager, hardware-interface, iiwa-msgs, iiwa-ros, joint-limits-interface, realtime-tools, roscpp, tf, urdf }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-hw";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_hw/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "cbe8e6287a261bb47cbff82f27035c6f69dc8fa65ce781cb0af6410e0a91b52f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules control-toolbox controller-interface controller-manager hardware-interface iiwa-msgs iiwa-ros joint-limits-interface realtime-tools roscpp tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hardware interface to an KUKA LBR IIWA Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
