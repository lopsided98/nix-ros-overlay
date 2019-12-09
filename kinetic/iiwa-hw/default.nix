
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, control-toolbox, joint-limits-interface, controller-manager, urdf, hardware-interface, tf, cmake-modules, catkin, iiwa-msgs, realtime-tools, iiwa-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-hw";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_hw/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "cbe8e6287a261bb47cbff82f27035c6f69dc8fa65ce781cb0af6410e0a91b52f";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface controller-manager urdf hardware-interface joint-limits-interface control-toolbox tf cmake-modules iiwa-msgs iiwa-ros realtime-tools roscpp ];
  propagatedBuildInputs = [ controller-interface controller-manager urdf hardware-interface joint-limits-interface control-toolbox cmake-modules tf iiwa-msgs iiwa-ros realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hardware interface to an KUKA LBR IIWA Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
