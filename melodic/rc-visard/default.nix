
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-hand-eye-calibration-client, catkin, rc-visard-driver, rc-visard-description }:
buildRosPackage {
  pname = "ros-melodic-rc-visard";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard/2.5.0-0.tar.gz;
    sha256 = "94eeab456e9143fa51ff0ad860be0cd10cfb400972cc6eef6f8c757753c12f44";
  };

  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    #license = lib.licenses.BSD;
  };
}
