
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rc-hand-eye-calibration-client, rc-pick-client, rc-roi-manager-gui, rc-silhouettematch-client, rc-tagdetect-client, rc-visard-description, rc-visard-driver }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3f82ecd03606bb7f65df71d26af68b46a59a09edeaa6c7bac18ac58f4b12aaa2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-pick-client rc-roi-manager-gui rc-silhouettematch-client rc-tagdetect-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
