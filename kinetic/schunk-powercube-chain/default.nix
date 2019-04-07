
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, schunk-libm5api, trajectory-msgs, sensor-msgs, catkin, linuxHeaders, cob-srvs, libntcan, urdf, std-msgs, diagnostic-msgs, roscpp, libpcan }:
buildRosPackage {
  pname = "ros-kinetic-schunk-powercube-chain";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_powercube_chain/0.6.12-0.tar.gz;
    sha256 = "4a63347c6c46154ad0e35b0a5f652aaee3b1cad20378b17ab80c163f7fd709f8";
  };

  buildInputs = [ std-srvs control-msgs schunk-libm5api trajectory-msgs sensor-msgs linuxHeaders cob-srvs libntcan urdf std-msgs diagnostic-msgs roscpp libpcan ];
  propagatedBuildInputs = [ std-srvs control-msgs schunk-libm5api trajectory-msgs sensor-msgs linuxHeaders cob-srvs libntcan urdf std-msgs diagnostic-msgs roscpp libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packages provides a configurable driver of a chain
  of Schunk powercubes. The powercube chain is configured
  through parameters. Most users will not directly interact
  with this package but with the corresponding launch files
  in other packages, e.g. schunk_bringup, cob_bringup, ...'';
    #license = lib.licenses.Apache 2.0;
  };
}
