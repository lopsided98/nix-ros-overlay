
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-srvs, control-msgs, diagnostic-msgs, libntcan, libpcan, roscpp, schunk-libm5api, sensor-msgs, std-msgs, std-srvs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-schunk-powercube-chain";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_powercube_chain/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "3e7774dfbaa500ebffd5a4c7cb63ea881e6941d0a5635e787e1707418bcf94db";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-srvs control-msgs diagnostic-msgs libntcan libpcan roscpp schunk-libm5api sensor-msgs std-msgs std-srvs trajectory-msgs urdf ];
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
