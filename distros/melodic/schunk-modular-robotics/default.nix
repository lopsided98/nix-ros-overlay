
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-description, schunk-libm5api, schunk-powercube-chain, schunk-sdh, schunk-simulated-tactile-sensors }:
buildRosPackage {
  pname = "ros-melodic-schunk-modular-robotics";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_modular_robotics/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "5ff696b3e27fafc12fd26ae1f0f013306d65382a9b463a6b7c4c6d9ad9755f03";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-description schunk-libm5api schunk-powercube-chain schunk-sdh schunk-simulated-tactile-sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack includes packages that provide access to the Schunk hardware through ROS messages, services and actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
