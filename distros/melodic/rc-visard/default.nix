
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rc-hand-eye-calibration-client, rc-pick-client, rc-roi-manager-gui, rc-silhouettematch-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-melodic-rc-visard";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "b6985c1ce05e26b49d2893d1718449b6a166e9766aa66e3996e7904d80235733";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-pick-client rc-roi-manager-gui rc-silhouettematch-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
