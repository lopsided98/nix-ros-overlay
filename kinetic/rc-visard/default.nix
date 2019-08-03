
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-hand-eye-calibration-client, rc-roi-manager-gui, catkin, rc-pick-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard";
  version = "2.7.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard/2.7.0-1.tar.gz;
    sha256 = "f14ee03711355119b717ecc3a5eaba69deffed9476f4e1b2e529bc36530b843e";
  };

  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-roi-manager-gui rc-pick-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
