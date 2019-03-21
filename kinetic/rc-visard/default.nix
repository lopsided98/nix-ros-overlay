
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-hand-eye-calibration-client, catkin, rc-visard-driver, rc-visard-description }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard/2.5.0-0.tar.gz;
    sha256 = "01998bbdcf589774db19db20fc24246546e3f31906864e9d3cbd83ede835dc0c";
  };

  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    #license = lib.licenses.BSD;
  };
}
