
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-hand-eye-calibration-client, catkin, rc-visard-driver, rc-visard-description }:
buildRosPackage {
  pname = "ros-lunar-rc-visard";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/lunar/rc_visard/2.5.0-0.tar.gz;
    sha256 = "478fd2a1ec97d5cba927f9ca342ed51560102f6b479f0630e06bc703adcfd33b";
  };

  propagatedBuildInputs = [ rc-hand-eye-calibration-client rc-visard-description rc-visard-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Roboception rc_visard support meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
