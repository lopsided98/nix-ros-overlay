
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-hand-eye-calibration-client, catkin, rc-pick-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard/2.6.4-1.tar.gz;
    sha256 = "10655faab0727788699e3f2e62234ea5f9e7a573c79e02506aafdb9a3121b23b";
  };

  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-pick-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
