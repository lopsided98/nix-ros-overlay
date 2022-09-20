
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rc-hand-eye-calibration-client, rc-pick-client, rc-silhouettematch-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-melodic-rc-visard";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "d01ef11e5b53a04e2dddd4876abe79b9255319a552259a372fad5d1a8aa1a36d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-pick-client rc-silhouettematch-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
