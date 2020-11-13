
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rc-hand-eye-calibration-client, rc-pick-client, rc-roi-manager-gui, rc-silhouettematch-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "72fa0c1686ba6b07dbde1482ef556fc1026d971d14dd45db0f6483403bfdfd78";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-pick-client rc-roi-manager-gui rc-silhouettematch-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
