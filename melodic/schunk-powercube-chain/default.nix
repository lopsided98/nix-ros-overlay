
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, schunk-libm5api, trajectory-msgs, sensor-msgs, catkin, linuxHeaders, cob-srvs, libntcan, urdf, std-msgs, diagnostic-msgs, roscpp, libpcan }:
buildRosPackage {
  pname = "ros-melodic-schunk-powercube-chain";
  version = "0.6.13-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_powercube_chain/0.6.13-2.tar.gz";
    name = "0.6.13-2.tar.gz";
    sha256 = "805d6614d5110463ddd7871aea6cff7460d8200a572feaf35f003a31475939c2";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs control-msgs schunk-libm5api trajectory-msgs sensor-msgs linuxHeaders cob-srvs libntcan urdf std-msgs diagnostic-msgs roscpp libpcan ];
  propagatedBuildInputs = [ std-srvs control-msgs schunk-libm5api trajectory-msgs sensor-msgs diagnostic-msgs linuxHeaders cob-srvs urdf std-msgs libntcan roscpp libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packages provides a configurable driver of a chain
  of Schunk powercubes. The powercube chain is configured
  through parameters. Most users will not directly interact
  with this package but with the corresponding launch files
  in other packages, e.g. schunk_bringup, cob_bringup, ...'';
    license = with lib.licenses; [ asl20 ];
  };
}
