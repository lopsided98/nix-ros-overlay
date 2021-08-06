
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rc-hand-eye-calibration-client, rc-pick-client, rc-roi-manager-gui, rc-silhouettematch-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-melodic-rc-visard";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "888b202662f7d7e64f86933f50f6f1df5b04e0497634e7b3de2e88798e147e47";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-pick-client rc-roi-manager-gui rc-silhouettematch-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
